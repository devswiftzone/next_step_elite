# syntax=docker/dockerfile:1

# --- Build ---
FROM oven/bun:1.1-alpine AS build
WORKDIR /app

# Dependencias nativas opcionales (solo si tu proyecto compila addons: sharp, canvas, etc.)
# RUN apk add --no-cache build-base python3

# Copiamos manifest + lockfile (si existe)
COPY package.json bun.lockb* ./

# Instalación reproducible si hay lockfile; si no, instala normal
RUN if [ -f bun.lockb ]; then bun install --frozen-lockfile; else bun install; fi

# Copiamos el resto y construimos
COPY . .
RUN bun run build

# --- Runtime ---
FROM oven/bun:1.1-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000
ENV NITRO_PORT=3000

# Si usas variables públicas de Nuxt, colócalas con prefijo NUXT_PUBLIC_*
ENV NUXT_PUBLIC_API_BASE=https://next-step-elite.cabrerasiel.workers.dev

COPY --from=build /app/.output /app/.output

EXPOSE 3000
# Bun ejecuta el servidor Nitro (compatible con Node API)
CMD ["bun", ".output/server/index.mjs"]
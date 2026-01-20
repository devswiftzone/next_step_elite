import type { Config } from 'tailwindcss'

export default <Config>{
  content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./app.vue",
    "./error.vue",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#2563eb', // Blue 600
          dark: '#1d4ed8',
        },
        secondary: {
          DEFAULT: '#10b981', // Emerald 500
          dark: '#059669',
        },
        dark: {
          DEFAULT: '#0f172a', // Slate 900
          surface: '#1e293b', // Slate 800
        }
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
        display: ['Outfit', 'sans-serif'],
      }
    }
  },
  plugins: [],
}

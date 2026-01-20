<template>
  <NuxtLink to="/" class="flex items-center gap-2 group">
    <div class="w-10 h-10 bg-primary/10 rounded-xl flex items-center justify-center group-hover:bg-primary/20 transition-colors">
      <TrendingUp class="w-6 h-6 text-primary" />
    </div>
    <span class="font-display font-bold text-xl tracking-tight text-slate-900 dark:text-white">
      NEXT STEP <span class="text-primary">ELITE</span>
    </span>
  </NuxtLink>
</template>

<script setup lang="ts">
import { TrendingUp } from 'lucide-vue-next';
</script>

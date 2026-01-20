<template>
  <component
    :is="to ? NuxtLink : 'button'"
    :to="to"
    :class="[
      'inline-flex items-center justify-center px-8 py-4 text-base font-bold rounded-full transition-all duration-300 focus:outline-none focus:ring-2 focus:ring-offset-2 disabled:opacity-50 disabled:cursor-not-allowed',
      variant === 'primary' 
        ? 'border border-transparent text-white bg-primary hover:bg-primary-dark hover:scale-105 focus:ring-primary shadow-lg shadow-primary/25' 
        : variant === 'secondary'
        ? 'border border-transparent text-white bg-secondary hover:bg-secondary-dark hover:scale-105 focus:ring-secondary shadow-lg shadow-secondary/25'
        : 'border-2 border-slate-200 dark:border-slate-700 text-slate-700 dark:text-slate-200 bg-transparent hover:bg-slate-50 dark:hover:bg-slate-800 focus:ring-slate-500',
      block ? 'w-full' : ''
    ]"
    v-bind="$attrs"
  >
    <slot />
    <ArrowRight v-if="arrow" class="ml-2 -mr-1 h-5 w-5" />
  </component>
</template>

<script setup lang="ts">
import { ArrowRight } from 'lucide-vue-next';
const NuxtLink = resolveComponent('NuxtLink');

defineProps({
  variant: {
    type: String,
    default: 'primary',
    validator: (value: string) => ['primary', 'secondary', 'outline'].includes(value)
  },
  to: {
    type: String,
    default: null
  },
  block: {
    type: Boolean,
    default: false
  },
  arrow: {
    type: Boolean,
    default: false
  }
});
</script>

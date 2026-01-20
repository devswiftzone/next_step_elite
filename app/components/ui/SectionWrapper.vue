<template>
  <section :class="['py-20 md:py-32 relative overflow-hidden', bgClass]">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
      <slot />
    </div>
  </section>
</template>

<script setup lang="ts">
defineProps({
  bgClass: {
    type: String,
    default: 'bg-white dark:bg-dark'
  }
});
</script>

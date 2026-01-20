<template>
  <div class="bg-white dark:bg-dark">
    <!-- Hero Section -->
    <section class="relative py-20 overflow-hidden">
      <div
        class="absolute inset-0 bg-gradient-to-br from-slate-50 to-white dark:from-dark-surface dark:to-dark z-0"
      ></div>
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div class="max-w-3xl mx-auto text-center">
          <h1
            class="text-4xl md:text-5xl font-display font-bold text-slate-900 dark:text-white mb-6"
          >
            Latest Insights
          </h1>
          <p
            class="text-xl text-slate-600 dark:text-slate-300 leading-relaxed mb-8"
          >
            Strategies, trends, and tips for high-growth B2B sales teams.
          </p>
        </div>
      </div>
    </section>

    <!-- Blog List Placeholder -->
    <section class="py-20">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <div
          class="p-12 bg-slate-50 dark:bg-dark-surface rounded-2xl border border-dashed border-slate-300 dark:border-slate-700"
        >
          <h3 class="text-2xl font-bold text-slate-900 dark:text-white mb-4">
            Coming Soon
          </h3>
          <p class="text-slate-600 dark:text-slate-300">
            Our blog is currently under construction. Check back soon for
            updates!
          </p>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
useHead({
  title: "Blog - Next Step Elite",
  meta: [
    {
      name: "description",
      content: "Insights and strategies for B2B sales and growth.",
    },
  ],
});
</script>

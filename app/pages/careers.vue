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
            Join Our Team
          </h1>
          <p
            class="text-xl text-slate-600 dark:text-slate-300 leading-relaxed mb-8"
          >
            We're building the future of B2B sales. Come help us redefine how
            companies grow.
          </p>
        </div>
      </div>
    </section>

    <!-- Open Roles Placeholder -->
    <section class="py-20">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <div
          class="p-12 bg-slate-50 dark:bg-dark-surface rounded-2xl border border-dashed border-slate-300 dark:border-slate-700"
        >
          <h3 class="text-2xl font-bold text-slate-900 dark:text-white mb-4">
            No Open Roles Currently
          </h3>
          <p class="text-slate-600 dark:text-slate-300">
            We're not actively hiring for specific roles right now, but we're
            always looking for talented individuals. Feel free to
            <NuxtLink to="/contact" class="text-primary hover:underline"
              >contact us</NuxtLink
            >.
          </p>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
useHead({
  title: "Careers - Next Step Elite",
  meta: [
    {
      name: "description",
      content: "Join the Next Step Elite team and help B2B businesses grow.",
    },
  ],
});
</script>

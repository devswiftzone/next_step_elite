<template>
  <nav :class="['fixed top-0 left-0 right-0 z-50 transition-all duration-300', scrolled ? 'bg-white/80 dark:bg-dark/80 backdrop-blur-md border-b border-slate-200 dark:border-slate-800' : 'bg-transparent py-4']">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex items-center justify-between h-16 md:h-20">
        <!-- Logo -->
        <UiLogo />

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center gap-8">
          <NuxtLink 
            v-for="item in navItems" 
            :key="item.path" 
            :to="item.path"
            class="text-sm font-medium text-slate-600 dark:text-slate-300 hover:text-primary dark:hover:text-primary transition-colors"
            active-class="text-primary dark:text-primary"
          >
            {{ item.name }}
          </NuxtLink>
        </div>

        <!-- CTA & Mobile Toggle -->
        <div class="flex items-center gap-4">
          <UiButton to="/contact" size="sm" class="hidden md:inline-flex px-6 py-2.5">
            Book Strategy Call
          </UiButton>
          
          <button @click="mobileMenuOpen = !mobileMenuOpen" class="md:hidden p-2 text-slate-600 dark:text-slate-300">
            <Menu v-if="!mobileMenuOpen" class="w-6 h-6" />
            <X v-else class="w-6 h-6" />
          </button>
        </div>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div v-show="mobileMenuOpen" class="md:hidden absolute top-full left-0 right-0 bg-white dark:bg-dark border-b border-slate-200 dark:border-slate-800 p-4 shadow-xl">
      <div class="flex flex-col gap-4">
        <NuxtLink 
          v-for="item in navItems" 
          :key="item.path" 
          :to="item.path"
          @click="mobileMenuOpen = false"
          class="text-base font-medium text-slate-600 dark:text-slate-300 hover:text-primary"
          active-class="text-primary"
        >
          {{ item.name }}
        </NuxtLink>
        <UiButton to="/contact" block @click="mobileMenuOpen = false">
          Book Strategy Call
        </UiButton>
      </div>
    </div>
  </nav>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue';
import { Menu, X } from 'lucide-vue-next';

const mobileMenuOpen = ref(false);
const scrolled = ref(false);

const navItems = [
  { name: 'Home', path: '/' },
  { name: 'Services', path: '/services' },
  { name: 'Industries', path: '/industries' },
  { name: 'About', path: '/about' },
];

const handleScroll = () => {
  scrolled.value = window.scrollY > 20;
};

onMounted(() => {
  window.addEventListener('scroll', handleScroll);
});

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll);
});
</script>

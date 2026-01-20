<template>
  <footer class="bg-slate-50 dark:bg-dark-surface border-t border-slate-200 dark:border-slate-800 pt-16 pb-8">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="grid grid-cols-1 md:grid-cols-4 gap-12 mb-12">
        <!-- Brand -->
        <div class="col-span-1 md:col-span-1">
          <UiLogo class="mb-6" />
          <p class="text-slate-600 dark:text-slate-400 text-sm leading-relaxed mb-6">
            We help B2B businesses grow revenue by designing, launching, and managing full-funnel sales campaigns.
          </p>
          <div class="flex gap-4">
            <a href="#" class="text-slate-400 hover:text-primary transition-colors"><Linkedin class="w-5 h-5" /></a>
            <a href="#" class="text-slate-400 hover:text-primary transition-colors"><Twitter class="w-5 h-5" /></a>
          </div>
        </div>

        <!-- Links -->
        <div>
          <h4 class="font-display font-bold text-slate-900 dark:text-white mb-6">Company</h4>
          <ul class="space-y-3">
            <li v-for="item in companyLinks" :key="item.name">
              <NuxtLink :to="item.path" class="text-slate-600 dark:text-slate-400 hover:text-primary text-sm transition-colors">{{ item.name }}</NuxtLink>
            </li>
          </ul>
        </div>

        <div>
          <h4 class="font-display font-bold text-slate-900 dark:text-white mb-6">Services</h4>
          <ul class="space-y-3">
            <li v-for="item in serviceLinks" :key="item.name">
              <NuxtLink :to="item.path" class="text-slate-600 dark:text-slate-400 hover:text-primary text-sm transition-colors">{{ item.name }}</NuxtLink>
            </li>
          </ul>
        </div>

        <!-- Contact -->
        <div>
          <h4 class="font-display font-bold text-slate-900 dark:text-white mb-6">Contact</h4>
          <ul class="space-y-4">
            <li class="flex items-start gap-3 text-sm text-slate-600 dark:text-slate-400">
              <MapPin class="w-5 h-5 text-primary shrink-0" />
              <span>Doral, Florida, USA</span>
            </li>
            <li class="flex items-center gap-3 text-sm text-slate-600 dark:text-slate-400">
              <Mail class="w-5 h-5 text-primary shrink-0" />
              <a href="mailto:hello@nextstepelite.com" class="hover:text-primary">hello@nextstepelite.com</a>
            </li>
            <li class="flex items-center gap-3 text-sm text-slate-600 dark:text-slate-400">
              <Phone class="w-5 h-5 text-primary shrink-0" />
              <a href="tel:+13055550123" class="hover:text-primary">+1 (305) 555-0123</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="border-t border-slate-200 dark:border-slate-800 pt-8 flex flex-col md:flex-row justify-between items-center gap-4">
        <p class="text-slate-500 text-sm">© {{ new Date().getFullYear() }} Next Step Elite, Inc. All rights reserved.</p>
        <div class="flex gap-6">
          <NuxtLink to="/privacy" class="text-slate-500 hover:text-primary text-sm">Privacy Policy</NuxtLink>
          <NuxtLink to="/terms" class="text-slate-500 hover:text-primary text-sm">Terms of Service</NuxtLink>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
import { Linkedin, Twitter, MapPin, Mail, Phone } from 'lucide-vue-next';

const companyLinks = [
  { name: 'About Us', path: '/about' },
  { name: 'Careers', path: '/careers' }, // Placeholder
  { name: 'Blog', path: '/blog' },      // Placeholder
  { name: 'Contact', path: '/contact' },
];

const serviceLinks = [
  { name: 'Campaign Management', path: '/services' },
  { name: 'Lead Generation', path: '/services' },
  { name: 'Appointment Setting', path: '/services' },
  { name: 'Sales Operations', path: '/services' },
];
</script>

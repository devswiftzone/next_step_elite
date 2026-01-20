<template>
  <div class="pt-24 pb-20">
    <UiSectionWrapper class="pt-10">
      <div class="max-w-4xl mx-auto text-center mb-16">
        <h1 class="text-4xl md:text-6xl font-display font-bold text-slate-900 dark:text-white mb-6">
          Let's Discuss <span class="text-primary">Your Strategy</span>
        </h1>
        <p class="text-xl text-slate-600 dark:text-slate-400">
          Ready to scale? Book a strategy call or send us a message to get started.
        </p>
      </div>

      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 lg:gap-24">
        <!-- Contact Form -->
        <div class="bg-white dark:bg-dark-surface p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-800">
          <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-6">Send us a Message</h2>
          <form class="space-y-6" @submit.prevent>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div>
                <label for="firstName" class="block text-sm font-medium text-slate-700 dark:text-slate-300 mb-2">First Name</label>
                <input type="text" id="firstName" class="w-full px-4 py-3 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-dark focus:ring-2 focus:ring-primary focus:border-transparent outline-none transition-all" placeholder="John" />
              </div>
              <div>
                <label for="lastName" class="block text-sm font-medium text-slate-700 dark:text-slate-300 mb-2">Last Name</label>
                <input type="text" id="lastName" class="w-full px-4 py-3 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-dark focus:ring-2 focus:ring-primary focus:border-transparent outline-none transition-all" placeholder="Doe" />
              </div>
            </div>
            
            <div>
              <label for="email" class="block text-sm font-medium text-slate-700 dark:text-slate-300 mb-2">Work Email</label>
              <input type="email" id="email" class="w-full px-4 py-3 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-dark focus:ring-2 focus:ring-primary focus:border-transparent outline-none transition-all" placeholder="john@company.com" />
            </div>

            <div>
              <label for="company" class="block text-sm font-medium text-slate-700 dark:text-slate-300 mb-2">Company Name</label>
              <input type="text" id="company" class="w-full px-4 py-3 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-dark focus:ring-2 focus:ring-primary focus:border-transparent outline-none transition-all" placeholder="Next Step Elite, Inc." />
            </div>

            <div>
              <label for="message" class="block text-sm font-medium text-slate-700 dark:text-slate-300 mb-2">How can we help?</label>
              <textarea id="message" rows="4" class="w-full px-4 py-3 rounded-xl border border-slate-200 dark:border-slate-700 bg-slate-50 dark:bg-dark focus:ring-2 focus:ring-primary focus:border-transparent outline-none transition-all" placeholder="Tell us about your sales goals..."></textarea>
            </div>

            <UiButton block>Send Message</UiButton>
          </form>
        </div>

        <!-- Booking Section -->
        <div class="flex flex-col justify-center">
          <div class="mb-10 text-center lg:text-left">
             <h2 class="text-2xl font-bold text-slate-900 dark:text-white mb-4">Prefer to talk now?</h2>
             <p class="text-slate-600 dark:text-slate-400 mb-6">
               Book a 15-minute discovery call directly with our sales director. No pressure, just value.
             </p>
          </div>
          
          <!-- Calendly Placeholder -->
          <div class="bg-white dark:bg-dark-surface p-4 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-800 h-[600px] flex flex-col items-center justify-center relative overflow-hidden group hover:border-primary/50 transition-colors cursor-pointer">
             <div class="absolute inset-0 bg-slate-50 dark:bg-slate-900 opacity-50"></div>
             <Calendar class="w-16 h-16 text-primary mb-4 relative z-10" />
             <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-2 relative z-10">Calendar Loading...</h3>
             <p class="text-slate-500 text-sm relative z-10">(Integration Placeholder)</p>
             <div class="absolute inset-0 flex items-center justify-center bg-black/5 opacity-0 group-hover:opacity-100 transition-opacity z-20">
                <span class="bg-white px-4 py-2 rounded-full shadow-lg text-sm font-semibold">Click to Schedule</span>
             </div>
          </div>
        </div>
      </div>
    </UiSectionWrapper>
  </div>
</template>

<script setup lang="ts">
import { Calendar } from 'lucide-vue-next';

useHead({
  title: 'Contact Us | Next Step Elite',
  meta: [
    { name: 'description', content: 'Get in touch with Next Step Elite. Book a strategy call or request a proposal for your sales campaign.' }
  ]
})
</script>

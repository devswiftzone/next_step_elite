<template>
  <div class="pt-24 pb-20">
    <!-- Mission Section -->
    <UiSectionWrapper class="pt-10">
      <div class="flex flex-col md:flex-row items-center gap-12 mb-20">
        <div class="md:w-1/2">
          <span class="text-primary font-bold tracking-wider uppercase text-sm mb-2 block">Our Mission</span>
          <h1 class="text-4xl md:text-5xl font-display font-bold text-slate-900 dark:text-white mb-6">
            Democratizing Enterprise-Grade Sales Operations
          </h1>
          <p class="text-lg text-slate-600 dark:text-slate-400 mb-6 leading-relaxed">
            At Next Step Elite, we believe that every business deserves a high-performing sales engine. We bring the structured, data-driven approaches used by Fortune 500 telecom giants to growing B2B companies.
          </p>
          <p class="text-lg text-slate-600 dark:text-slate-400 leading-relaxed">
            Our goal is simple: eliminate the uncertainty of "where will our next deal come from" and replace it with a predictable, scalable revenue machine.
          </p>
        </div>
        <div class="md:w-1/2">
          <div class="relative bg-gradient-to-br from-primary to-secondary rounded-3xl p-1 shadow-2xl rotate-2 hover:rotate-0 transition-transform duration-500">
             <div class="bg-white dark:bg-dark-surface rounded-3xl overflow-hidden aspect-square flex items-center justify-center p-8">
                <!-- Team Visual -->
                <div class="grid grid-cols-2 gap-6 w-full h-full p-4">
                   <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?auto=format&fit=crop&w=400&h=400" alt="Team Member" class="w-full h-full object-cover rounded-2xl shadow-lg hover:scale-105 transition-transform duration-300" />
                   <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=400&h=400" alt="Team Member" class="w-full h-full object-cover rounded-2xl shadow-lg hover:scale-105 transition-transform duration-300 mt-4" />
                   <img src="https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?auto=format&fit=crop&w=400&h=400" alt="Team Member" class="w-full h-full object-cover rounded-2xl shadow-lg hover:scale-105 transition-transform duration-300 -mt-4" />
                   <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?auto=format&fit=crop&w=400&h=400" alt="Team Member" class="w-full h-full object-cover rounded-2xl shadow-lg hover:scale-105 transition-transform duration-300" />
                </div>
             </div>
          </div>
        </div>
      </div>
    </UiSectionWrapper>

    <!-- Why Us / Values -->
    <UiSectionWrapper bgClass="bg-slate-50 dark:bg-dark-surface">
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl font-display font-bold text-slate-900 dark:text-white mb-4">Why Next Step Elite?</h2>
        <p class="text-slate-600 dark:text-slate-400">Built on reliability, transparency, and results.</p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <div class="p-6 bg-white dark:bg-dark rounded-xl shadow-md border border-slate-100 dark:border-slate-800">
           <ShieldCheck class="w-12 h-12 text-secondary mb-4" />
           <h3 class="text-xl font-bold mb-2 text-slate-900 dark:text-white">Proven Reliability</h3>
           <p class="text-slate-600 dark:text-slate-400 text-sm">Our methodologies are battle-tested across hundreds of campaigns. We don't guess; we execute.</p>
        </div>
        <div class="p-6 bg-white dark:bg-dark rounded-xl shadow-md border border-slate-100 dark:border-slate-800">
           <Zap class="w-12 h-12 text-primary mb-4" />
           <h3 class="text-xl font-bold mb-2 text-slate-900 dark:text-white">Speed to Market</h3>
           <p class="text-slate-600 dark:text-slate-400 text-sm">We can launch a fully operational sales campaign in as little as 14 days, minimizing downtime.</p>
        </div>
        <div class="p-6 bg-white dark:bg-dark rounded-xl shadow-md border border-slate-100 dark:border-slate-800">
           <MapPin class="w-12 h-12 text-primary mb-4" />
           <h3 class="text-xl font-bold mb-2 text-slate-900 dark:text-white">US-Based Operations</h3>
           <p class="text-slate-600 dark:text-slate-400 text-sm">Headquartered in Doral, Florida. We understand the nuances of the North American market.</p>
        </div>
      </div>
    </UiSectionWrapper>

    <!-- Leadership / Trust -->
    <UiSectionWrapper>
       <div class="bg-dark rounded-3xl p-8 md:p-16 text-center">
          <h2 class="text-3xl md:text-4xl font-display font-bold text-white mb-6">Partner with specialized experts</h2>
          <p class="text-slate-300 max-w-2xl mx-auto mb-10 text-lg">
             Our leadership team comes from backgrounds in major telecom sales, enterprise software, and growth marketing.
          </p>
          <UiButton to="/contact" variant="primary">Meet the Team</UiButton>
       </div>
    </UiSectionWrapper>
  </div>
</template>

<script setup lang="ts">
import { ShieldCheck, Zap, MapPin } from 'lucide-vue-next';

useHead({
  title: 'About Us | Next Step Elite',
  meta: [
    { name: 'description', content: 'Learn about Next Step Elite, a Florida-based sales campaign management company committed to your revenue growth.' }
  ]
})
</script>

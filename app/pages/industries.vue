<template>
  <div class="pt-24 pb-20">
    <UiSectionWrapper class="pt-10">
      <div class="max-w-4xl mx-auto text-center mb-16">
        <h1 class="text-4xl md:text-6xl font-display font-bold text-slate-900 dark:text-white mb-6">
          Tailored Solutions for <span class="text-primary">Every Industry</span>
        </h1>
        <p class="text-xl text-slate-600 dark:text-slate-400">
          We understand the unique challenges of your sector. Our campaigns are built on industry-specific best practices.
        </p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <UiCard v-for="industry in industries" :key="industry.title" class="flex flex-col h-full">
          <div class="mb-6">
            <component :is="industry.icon" class="w-10 h-10 text-primary mb-4" />
            <h3 class="text-2xl font-bold text-slate-900 dark:text-white mb-2">{{ industry.title }}</h3>
            <p class="text-slate-600 dark:text-slate-400 text-sm font-medium">{{ industry.subtitle }}</p>
          </div>
          <p class="text-slate-600 dark:text-slate-400 mb-6 flex-grow leading-relaxed">
            {{ industry.description }}
          </p>
          <div class="bg-slate-50 dark:bg-slate-800 p-4 rounded-xl mb-6">
            <h4 class="font-bold text-slate-900 dark:text-white text-sm mb-2">Key Winning Strategies:</h4>
            <ul class="space-y-2">
              <li v-for="strategy in industry.strategies" :key="strategy" class="flex items-start gap-2 text-sm text-slate-600 dark:text-slate-300">
                <Check class="w-4 h-4 text-secondary mt-0.5 shrink-0" />
                <span>{{ strategy }}</span>
              </li>
            </ul>
          </div>
          <UiButton :to="'/contact?industry=' + industry.slug" variant="outline" block class="mt-auto">
            Scale Your {{ industry.title }} Sales
          </UiButton>
        </UiCard>
      </div>
    </UiSectionWrapper>
  </div>
</template>

<script setup lang="ts">
import { Wifi, Home, Store, Briefcase, Check } from 'lucide-vue-next';

useHead({
  title: 'Industries | Next Step Elite',
  meta: [
    { name: 'description', content: 'Specialized sales campaigns for Telecom, Home Services, Local Businesses, and B2B sectors.' }
  ]
})

const industries = [
  {
    title: 'Telecom & Internet',
    slug: 'telecom',
    subtitle: 'Fiber, VoIP, & Business Connectivity',
    description: 'In the highly competitive telecom space, volume and speed to lead are critical. Our campaigns focus on identifying service-eligible territories and engaging decision-makers who are ready to switch.',
    icon: Wifi,
    strategies: ['Territory-based prospecting', 'Contract expiration tracking', 'Competitive buyout offers']
  },
  {
    title: 'Home Services',
    slug: 'home-services',
    subtitle: 'HVAC, Solar, Roofing, & Restoration',
    description: 'Trust is the currency of home services. Our campaigns bridge the gap between digital interest and in-home estimates, ensuring your technicians arrive at qualified opportunities.',
    icon: Home,
    strategies: ['Speed-to-lead automation', 'Seasonal campaign adjustments', 'Review-based social proofing']
  },
  {
    title: 'Local Businesses',
    slug: 'local',
    subtitle: 'Professional Services & Retail',
    description: 'For regional businesses, local reputation and targeted outreach are key. We help you dominate your local market with hyper-focused lead generation campaigns.',
    icon: Store,
    strategies: ['Geo-fenced targeting', 'Local partnership outreach', 'Community-focused messaging']
  },
  {
    title: 'B2B Sales Teams',
    slug: 'b2b',
    subtitle: 'SaaS, Consulting, & Manufacturing',
    description: 'We augment existing sales teams with high-volume prospecting. Let your Account Executives focus on closing while we handle the top-of-funnel grunt work.',
    icon: Briefcase,
    strategies: ['Account-Based Marketing (ABM)', 'Decision-maker mapping', 'Multi-touch omni-channel sequences']
  }
];
</script>

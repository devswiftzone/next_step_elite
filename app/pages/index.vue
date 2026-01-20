<template>
  <div class="overflow-hidden">
    <!-- Hero Section -->
    <section class="relative pt-32 pb-20 md:pt-48 md:pb-32 bg-white dark:bg-dark">
      <!-- Background Abstract Elements -->
      <div class="absolute top-0 right-0 -translate-y-1/4 translate-x-1/4 w-[800px] h-[800px] bg-primary/5 rounded-full blur-3xl -z-10"></div>
      <div class="absolute bottom-0 left-0 translate-y-1/4 -translate-x-1/4 w-[600px] h-[600px] bg-secondary/5 rounded-full blur-3xl -z-10"></div>

      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
        <div class="max-w-4xl mx-auto text-center">
          <div class="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-slate-100 dark:bg-slate-800 text-slate-600 dark:text-slate-300 text-sm font-medium mb-8">
            <span class="relative flex h-2 w-2">
              <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-secondary opacity-75"></span>
              <span class="relative inline-flex rounded-full h-2 w-2 bg-secondary"></span>
            </span>
            Taking new clients for Q3 2026
          </div>
          <h1 class="text-5xl md:text-7xl font-display font-bold tracking-tight text-slate-900 dark:text-white mb-8">
            Accelerate Your Revenue with <span class="text-primary">Precision Sales Operations</span>
          </h1>
          <p class="text-xl md:text-2xl text-slate-600 dark:text-slate-400 mb-10 leading-relaxed max-w-2xl mx-auto">
            We design, launch, and manage full-funnel sales campaigns that generate qualified leads and close deals for B2B companies.
          </p>
          <div class="flex flex-col sm:flex-row items-center justify-center gap-4">
            <UiButton to="/contact" arrow class="w-full sm:w-auto">
              Book a Free Strategy Call
            </UiButton>
            <UiButton to="/contact" variant="outline" class="w-full sm:w-auto">
              Request a Proposal
            </UiButton>
          </div>
          <p class="mt-6 text-sm text-slate-500">
            Trusted by partners in Telecom, Home Services, and B2B Tech
          </p>
        </div>
      </div>
    </section>

    <!-- Services Overview -->
    <UiSectionWrapper bgClass="bg-slate-50 dark:bg-dark-surface/50">
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-display font-bold text-slate-900 dark:text-white mb-4">
          End-to-End Campaign Management
        </h2>
        <p class="text-lg text-slate-600 dark:text-slate-400">
          We don't just generate leads; we build and operate the entire sales engine so you can focus on product and delivery.
        </p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <UiCard v-for="service in services" :key="service.title" class="relative group">
          <div class="w-12 h-12 bg-primary/10 rounded-xl flex items-center justify-center mb-6 group-hover:bg-primary/20 transition-colors">
            <component :is="service.icon" class="w-6 h-6 text-primary" />
          </div>
          <h3 class="text-xl font-bold text-slate-900 dark:text-white mb-3">{{ service.title }}</h3>
          <p class="text-slate-600 dark:text-slate-400 mb-6 leading-relaxed">{{ service.description }}</p>
          <NuxtLink to="/services" class="inline-flex items-center text-primary font-medium hover:text-primary-dark transition-colors">
            Learn more <ArrowRight class="w-4 h-4 ml-1" />
          </NuxtLink>
        </UiCard>
      </div>
    </UiSectionWrapper>

    <!-- 4-Step Process -->
    <UiSectionWrapper class="border-t border-slate-200 dark:border-slate-800">
      <div class="text-center max-w-3xl mx-auto mb-20">
        <span class="text-primary font-bold tracking-wider uppercase text-sm mb-2 block">Our Methodology</span>
        <h2 class="text-3xl md:text-4xl font-display font-bold text-slate-900 dark:text-white mb-4">
          From Concept to Conversion
        </h2>
        <p class="text-lg text-slate-600 dark:text-slate-400">
          Our proven framework for launching successful sales campaigns.
        </p>
      </div>

      <div class="relative">
        <!-- Connecting Line (Desktop) -->
        <div class="hidden md:block absolute top-12 left-0 w-full h-0.5 bg-slate-200 dark:bg-slate-800 -z-10"></div>

        <div class="grid grid-cols-1 md:grid-cols-4 gap-12">
          <div v-for="(step, index) in steps" :key="step.title" class="relative">
            <div class="w-24 h-24 bg-white dark:bg-dark border-2 border-primary rounded-full flex items-center justify-center mx-auto mb-6 shadow-lg z-10">
              <span class="text-3xl font-bold text-primary">{{ index + 1 }}</span>
            </div>
            <h3 class="text-xl font-bold text-slate-900 dark:text-white text-center mb-3">{{ step.title }}</h3>
            <p class="text-slate-600 dark:text-slate-400 text-center text-sm leading-relaxed">{{ step.description }}</p>
          </div>
        </div>
      </div>
    </UiSectionWrapper>

    <!-- Results / Metrics -->
    <UiSectionWrapper bgClass="bg-dark text-white">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 text-center divide-y md:divide-y-0 md:divide-x divide-slate-800">
        <div class="p-4">
          <div class="text-5xl md:text-6xl font-display font-bold text-secondary mb-2">$50M+</div>
          <div class="text-slate-400">Revenue Generated for Clients</div>
        </div>
        <div class="p-4">
          <div class="text-5xl md:text-6xl font-display font-bold text-primary mb-2">300+</div>
          <div class="text-slate-400">Campaigns Launched Successfully</div>
        </div>
        <div class="p-4">
          <div class="text-5xl md:text-6xl font-display font-bold text-white mb-2">2.5M+</div>
          <div class="text-slate-400">Qualified Leads Delivered</div>
        </div>
      </div>
    </UiSectionWrapper>

    <!-- Final CTA -->
    <section class="py-24 bg-primary relative overflow-hidden">
      <div class="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 brightness-100 contrast-150 mix-blend-overlay"></div>
      <div class="max-w-4xl mx-auto px-4 text-center relative z-10">
        <h2 class="text-3xl md:text-5xl font-display font-bold text-white mb-6">
          Ready to Scale Your Sales?
        </h2>
        <p class="text-xl text-blue-100 mb-10 max-w-2xl mx-auto">
          Stop worrying about where your next lead is coming from. Let Next Step Elite build your revenue engine.
        </p>
        <div class="flex flex-col sm:flex-row items-center justify-center gap-4">
          <UiButton to="/contact" variant="secondary" arrow class="w-full sm:w-auto font-bold text-lg px-10 py-5">
            Get Your Free Strategy
          </UiButton>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
import { 
  ArrowRight, 
  Target, 
  Users, 
  Phone, 
  BarChart3, 
  MessageSquare,
  Settings 
} from 'lucide-vue-next';

useHead({
  title: 'Home | Next Step Elite - Sales Campaign Management',
  meta: [
    { name: 'description', content: 'Next Step Elite helps B2B businesses grow revenue through outsourced sales campaigns, lead generation, and appointment setting.' }
  ]
})

const services = [
  {
    title: 'Campaign Management',
    description: 'Full-service strategy, execution, and optimization of multi-channel sales campaigns tailored to your goals.',
    icon: Target
  },
  {
    title: 'Lead Generation',
    description: 'High-quality prospect sourcing and qualification to ensure your sales team only talks to decision-makers.',
    icon: Users
  },
  {
    title: 'Appointment Setting',
    description: 'Dedicated SDRs booking meetings directly into your calendar with qualified potential clients.',
    icon: Phone
  },
  {
    title: 'Sales Scripts & Pitch Points',
    description: 'Conversion-tested scripts and objection handling playbooks developed by industry experts.',
    icon: MessageSquare
  },
  {
    title: 'CRM & Automation',
    description: 'Setup and optimization of your CRM (Salesforce, HubSpot, etc.) to automate follow-ups and tracking.',
    icon: Settings
  },
  {
    title: 'Performance Tracking',
    description: 'Real-time dashboards and detailed reporting on KPIs, conversion rates, and ROI.',
    icon: BarChart3
  },
];

const steps = [
  {
    title: 'Discover',
    description: 'We analyze your market, target audience, and current sales process to identify growth opportunities.'
  },
  {
    title: 'Launch',
    description: 'Our team builds the campaign assets, sets up the tech stack, and trains the sales representatives.'
  },
  {
    title: 'Scale',
    description: 'We ramp up volume as we validate the messaging, ensuring consistent lead flow and appointment setting.'
  },
  {
    title: 'Optimize',
    description: 'Continuous A/B testing and performance analysis to lower CAC and increase conversion rates over time.'
  }
];
</script>

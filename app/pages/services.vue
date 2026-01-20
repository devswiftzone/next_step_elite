<template>
  <div class="pt-24 pb-20">
    <UiSectionWrapper class="pt-10 md:pt-20">
      <div class="max-w-4xl mx-auto text-center mb-16">
        <h1 class="text-4xl md:text-6xl font-display font-bold text-slate-900 dark:text-white mb-6">
          Comprehensive <span class="text-primary">Sales Solutions</span>
        </h1>
        <p class="text-xl text-slate-600 dark:text-slate-400">
          We provide the infrastructure, talent, and strategy to take your sales operations to the next level.
        </p>
      </div>

      <div class="space-y-24">
        <div v-for="(service, index) in services" :key="service.title" class="flex flex-col md:flex-row items-center gap-12 group">
          <div :class="['w-full md:w-1/2', index % 2 === 1 ? 'md:order-last' : '']">
            <div class="relative rounded-3xl overflow-hidden aspect-video bg-slate-100 dark:bg-slate-800 flex items-center justify-center p-8 border border-slate-200 dark:border-slate-700">
               <!-- Abstract visual representation -->
               <component :is="service.icon" class="w-24 h-24 text-primary opacity-20 group-hover:opacity-100 group-hover:scale-110 transition-all duration-500" />
               <div class="absolute inset-0 bg-gradient-to-tr from-primary/10 to-transparent"></div>
            </div>
          </div>
          <div class="w-full md:w-1/2">
            <div class="w-12 h-12 bg-primary/10 rounded-xl flex items-center justify-center mb-6">
              <component :is="service.icon" class="w-6 h-6 text-primary" />
            </div>
            <h2 class="text-3xl font-display font-bold text-slate-900 dark:text-white mb-4">{{ service.title }}</h2>
            <p class="text-lg text-slate-600 dark:text-slate-400 mb-6 leading-relaxed">
              {{ service.fullDescription }}
            </p>
            <ul class="space-y-3 mb-8">
              <li v-for="feature in service.features" :key="feature" class="flex items-center gap-3 text-slate-700 dark:text-slate-300">
                <CheckCircle2 class="w-5 h-5 text-secondary flex-shrink-0" />
                <span>{{ feature }}</span>
              </li>
            </ul>
            <UiButton to="/contact" variant="outline">Consult on {{ service.shortTitle }}</UiButton>
          </div>
        </div>
      </div>
    </UiSectionWrapper>
    
    <UiSectionWrapper bgClass="bg-slate-50 dark:bg-dark-surface">
      <div class="text-center">
         <h2 class="text-3xl font-bold mb-6 text-slate-900 dark:text-white">Need a custom solution?</h2>
         <p class="text-slate-600 dark:text-slate-400 mb-8 max-w-2xl mx-auto">We tailor our campaigns to your specific industry constraints and growth targets.</p>
         <UiButton to="/contact">Talk to a Strategist</UiButton>
      </div>
    </UiSectionWrapper>
  </div>
</template>

<script setup lang="ts">
import { Target, Users, Phone, BarChart3, MessageSquare, Settings, CheckCircle2 } from 'lucide-vue-next';

useHead({
  title: 'Services | Next Step Elite',
  meta: [
    { name: 'description', content: 'Explore our B2B sales services: Campaign Management, Lead Gen, Appointment Setting, and CRM Automation.' }
  ]
})

const services = [
  {
    title: 'Sales Campaign Management',
    shortTitle: 'Management',
    icon: Target,
    fullDescription: 'We take full ownership of your sales campaigns, from initial strategy to daily execution. Our team acts as an extension of your company, ensuring consistent messaging and performance.',
    features: ['Strategy Development & KPI Setting', 'Daily Campaign Optimization', 'A/B Testing of Messaging', 'Weekly Performance Reviews']
  },
  {
    title: 'Lead Generation & Qualification',
    shortTitle: 'Lead Gen',
    icon: Users,
    fullDescription: 'Stop wasting time on cold leads. We implement multi-channel prospecting strategies to deliver highly qualified, intent-verified leads ready for your sales team.',
    features: ['Multi-Channel Outreach (Email, LinkedIn, Phone)', 'Ideal Customer Profile (ICP) Targeting', 'Lead Scoring & Verification', 'Database Enrichment']
  },
  {
    title: 'Appointment Setting',
    shortTitle: 'Appointments',
    icon: Phone,
    fullDescription: 'Our dedicated SDRs handle the heavy lifting of cold calling and follow-ups to book confirmed meetings on your calendar.',
    features: ['Dedicated SDR Teams', 'Calendar Management', 'Meeting Confirmation & Reminders', 'No-Show Recovery']
  },
  {
    title: 'Sales Scripts & Pitch Points',
    shortTitle: 'Scripts',
    icon: MessageSquare,
    fullDescription: 'Words matter. We craft psychological, objection-proof scripts and playbooks that empower your sales team to close more deals.',
    features: ['Custom Sales Playbooks', 'Objection Handling Guides', 'Email Sequence Copywriting', 'Call Flow Frameworks']
  },
  {
    title: 'CRM & Automation Setup',
    shortTitle: 'CRM',
    icon: Settings,
    fullDescription: 'We ensure your tech stack works for you, not against you. From Salesforce to HubSpot, we build automated workflows that prevent leads from slipping through the cracks.',
    features: ['CRM Implementation & Audit', 'Automated Email Sequences', 'Workflow Construction', 'Integration Management']
  },
  {
    title: 'Reporting & Performance',
    shortTitle: 'Reporting',
    icon: BarChart3,
    fullDescription: 'Full transparency into your campaign performance with real-time dashboards that show exactly where your ROI is coming from.',
    features: ['Real-Time ROI Dashboards', 'Call Recording Analysis', 'Conversion Rate Optimization', 'Cohort Analysis']
  }
];
</script>

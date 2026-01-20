<template>
  <div class="bg-white dark:bg-dark min-h-screen">
    <!-- Header -->
    <section class="relative py-24 bg-slate-50 dark:bg-dark-surface border-b border-slate-200 dark:border-slate-800">
      <div class="max-w-4xl mx-auto px-6 text-center">
        <h1 class="text-4xl md:text-5xl font-display font-bold text-slate-900 dark:text-white mb-6">
          Terms of Service
        </h1>
        <p class="text-lg text-slate-600 dark:text-slate-400 max-w-2xl mx-auto">
          Please read these terms carefully before using our services. They govern your relationship with Next Step Elite.
        </p>
        <div class="mt-8 text-sm font-medium text-slate-500 dark:text-slate-500">
          Last Updated: {{ new Date().toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' }) }}
        </div>
      </div>
    </section>

    <!-- Content -->
    <section class="py-20">
      <div class="max-w-4xl mx-auto px-6">
        <div class="flex flex-col lg:flex-row gap-12">
          
          <!-- Navigation (Desktop Sticky) -->
          <aside class="hidden lg:block w-64 shrink-0">
            <div class="sticky top-24 space-y-1">
              <a v-for="section in sections" :key="section.id" :href="`#${section.id}`" 
                 class="block px-4 py-2 text-sm text-slate-600 dark:text-slate-400 hover:text-primary dark:hover:text-primary hover:bg-slate-50 dark:hover:bg-slate-800/50 rounded-lg transition-colors">
                {{ section.title }}
              </a>
            </div>
          </aside>

          <!-- Main Text -->
          <div class="prose prose-lg prose-slate dark:prose-invert max-w-none w-full prose-headings:font-display prose-headings:font-bold prose-h3:text-3xl prose-h3:mt-12 prose-h3:mb-6 prose-p:leading-relaxed prose-p:text-slate-600 dark:prose-p:text-slate-300 prose-li:text-slate-600 dark:prose-li:text-slate-300 prose-strong:text-slate-900 dark:prose-strong:text-white">
            
            <div id="agreement" class="scroll-mt-24">
              <h3>1. Agreement to Terms</h3>
              <p class="mb-6">
                These Terms of Service constitute a legally binding agreement made between you, whether personally or on behalf of an entity ("you") and Next Step Elite, Inc. ("we," "us" or "our"), 
                concerning your access to and use of the nextstepelite.com website as well as any other media form, channel, mobile website or mobile application related, linked, or otherwise connected thereto (collectively, the "Site").
              </p>
              <p class="mb-6">
                By accessing the Site, you agree that you have read, understood, and agreed to be bound by all of these Terms of Service. 
                <strong>IF YOU DO NOT AGREE WITH ALL OF THESE TERMS OF SERVICE, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SITE AND YOU MUST DISCONTINUE USE IMMEDIATELY.</strong>
              </p>
            </div>

            <div id="services" class="scroll-mt-24">
              <h3>2. Services Provided</h3>
              <p class="mb-6">
                Next Step Elite provides B2B sales and marketing services, including but not limited to lead generation, campaign management, appointment setting, and sales operations consulting ("Services"). 
                Specific scope of work, deliverables, and performance metrics are defined in individual service agreements or statements of work (SOW) executed between us and our clients.
              </p>
            </div>

            <div id="ip" class="scroll-mt-24">
              <h3>3. Intellectual Property Rights</h3>
              <p class="mb-6">
                Unless otherwise indicated, the Site and our Services are our proprietary property and all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics on the Site (collectively, the "Content") 
                and the trademarks, service marks, and logos contained therein (the "Marks") are owned or controlled by us or licensed to us, and are protected by copyright and trademark laws.
              </p>
              <p class="mb-6">
                Provided that you are eligible to use the Site, you are granted a limited license to access and use the Site and to download or print a copy of any portion of the Content to which you have properly gained access solely for your personal, non-commercial use.
              </p>
            </div>

            <div id="user-obligations" class="scroll-mt-24">
              <h3>4. User Representations & Obligations</h3>
              <p class="mb-6">By using the Site, you represent and warrant that:</p>
              <ul class="mb-6">
                <li>All registration information you submit will be true, accurate, current, and complete.</li>
                <li>You will maintain the accuracy of such information and promptly update such registration information as necessary.</li>
                <li>You have the legal capacity and you agree to comply with these Terms of Service.</li>
                <li>You will not use the Site for any illegal or unauthorized purpose.</li>
                <li>Your use of the Site will not violate any applicable law or regulation.</li>
              </ul>
            </div>

            <div id="prohibited" class="scroll-mt-24">
              <h3>5. Prohibited Activities</h3>
              <p class="mb-6">
                You may not access or use the Site for any purpose other than that for which we make the Site available. The Site may not be used in connection with any commercial endeavors except those that are specifically endorsed or approved by us.
              </p>
              <p class="mb-6">As a user of the Site, you agree not to:</p>
              <ul class="mb-6">
                <li>Systematically retrieve data or other content from the Site to create or compile, directly or indirectly, a collection, compilation, database, or directory without written permission from us.</li>
                <li>Make any unauthorized use of the Site, including collecting usernames and/or email addresses of users by electronic or other means for the purpose of sending unsolicited email.</li>
                <li>Circumvent, disable, or otherwise interfere with security-related features of the Site.</li>
                <li>Engage in unauthorized framing of or linking to the Site.</li>
              </ul>
            </div>

            <div id="payment" class="scroll-mt-24">
              <h3>6. Payment Terms</h3>
              <p class="mb-6">
                For clients engaging our Services, payment terms are governed by the specific Service Agreement or SOW. Generally, invoices are due upon receipt or within a specified timeframe (e.g., Net 15 or Net 30). 
                We reserve the right to suspend Services for any account that is past due.
              </p>
            </div>

            <div id="confidentiality" class="scroll-mt-24">
              <h3>7. Confidentiality</h3>
              <p class="mb-6">
                We acknowledge that in the course of providing Services, we may have access to your confidential information. We agree to hold such information in strict confidence and not to disclose it to any third party 
                except as necessary to provide the Services or as required by law.
              </p>
            </div>

            <div id="liability" class="scroll-mt-24">
              <h3>8. Limitation of Liability</h3>
              <p class="mb-6">
                IN NO EVENT WILL WE OR OUR DIRECTORS, EMPLOYEES, OR AGENTS BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY DIRECT, INDIRECT, CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL, OR PUNITIVE DAMAGES, 
                INCLUDING LOST PROFIT, LOST REVENUE, LOSS OF DATA, OR OTHER DAMAGES ARISING FROM YOUR USE OF THE SITE OR SERVICES, EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
              </p>
            </div>

            <div id="indemnification" class="scroll-mt-24">
              <h3>9. Indemnification</h3>
              <p class="mb-6">
                You agree to defend, indemnify, and hold us harmless, including our subsidiaries, affiliates, and all of our respective officers, agents, partners, and employees, from and against any loss, damage, liability, claim, or demand, 
                including reasonable attorneys' fees and expenses, made by any third party due to or arising out of: (1) your use of the Site; (2) breach of these Terms of Service; (3) any breach of your representations and warranties set forth in these Terms of Service; 
                (4) your violation of the rights of a third party, including but not limited to intellectual property rights; or (5) any overt harmful act toward any other user of the Site with whom you connected via the Site.
              </p>
            </div>

            <div id="governing-law" class="scroll-mt-24">
              <h3>10. Governing Law</h3>
              <p class="mb-6">
                These Terms shall be governed by and defined following the laws of the State of Florida. Next Step Elite, Inc. and yourself irrevocably consent that the courts of Florida shall have exclusive jurisdiction to resolve any dispute which may arise in connection with these terms.
              </p>
            </div>

            <div id="contact" class="scroll-mt-24">
              <h3>11. Contact Us</h3>
              <p class="mb-6">
                In order to resolve a complaint regarding the Site or to receive further information regarding use of the Site, please contact us at:
              </p>
              <div class="not-prose mt-6 p-6 bg-slate-50 dark:bg-slate-800 rounded-xl border border-slate-200 dark:border-slate-700">
                <p class="font-bold text-slate-900 dark:text-white">Next Step Elite, Inc.</p>
                <p class="text-slate-600 dark:text-slate-400 mt-2">Doral, Florida, USA</p>
                <p class="mt-4">
                  <a href="mailto:legal@nextstepelite.com" class="text-primary hover:underline">legal@nextstepelite.com</a>
                </p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
const sections = [
  { id: 'agreement', title: '1. Agreement to Terms' },
  { id: 'services', title: '2. Services Provided' },
  { id: 'ip', title: '3. Intellectual Property' },
  { id: 'user-obligations', title: '4. User Obligations' },
  { id: 'prohibited', title: '5. Prohibited Activities' },
  { id: 'payment', title: '6. Payment Terms' },
  { id: 'confidentiality', title: '7. Confidentiality' },
  { id: 'liability', title: '8. Limitation of Liability' },
  { id: 'indemnification', title: '9. Indemnification' },
  { id: 'governing-law', title: '10. Governing Law' },
  { id: 'contact', title: '11. Contact Us' },
];

useHead({
  title: 'Terms of Service - Next Step Elite',
  meta: [
    { name: 'description', content: 'Terms of Service for Next Step Elite. Please read our terms carefully.' },
  ],
});
</script>

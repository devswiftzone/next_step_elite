<template>
  <div class="bg-white dark:bg-dark min-h-screen">
    <!-- Header -->
    <section class="relative py-24 bg-slate-50 dark:bg-dark-surface border-b border-slate-200 dark:border-slate-800">
      <div class="max-w-4xl mx-auto px-6 text-center">
        <h1 class="text-4xl md:text-5xl font-display font-bold text-slate-900 dark:text-white mb-6">
          Privacy Policy
        </h1>
        <p class="text-lg text-slate-600 dark:text-slate-400 max-w-2xl mx-auto">
          We are committed to protecting your personal data and ensuring transparency in how we handle it.
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
            
            <div id="introduction" class="scroll-mt-24">
              <h3>1. Introduction</h3>
              <p class="mb-6">
                Next Step Elite, Inc. ("we," "us," or "our") respects your privacy and is committed to protecting your personal data. 
                This privacy policy will inform you as to how we look after your personal data when you visit our website (regardless of where you visit it from) 
                and tell you about your privacy rights and how the law protects you.
              </p>
              <p class="mb-6">
                This privacy policy applies to our website, services, and any communication you have with us.
              </p>
            </div>

            <div id="data-collection" class="scroll-mt-24">
              <h3>2. Information We Collect</h3>
              <p class="mb-6">We collect data to provide better services to all our users. The types of data we collect include:</p>
              <ul class="mb-6">
                <li><strong>Identity Data:</strong> First name, last name, username, or similar identifier.</li>
                <li><strong>Contact Data:</strong> Billing address, email address, and telephone numbers.</li>
                <li><strong>Financial Data:</strong> Payment card details (processed securely by our third-party payment processors).</li>
                <li><strong>Transaction Data:</strong> Details about payments to and from you and other details of services you have purchased from us.</li>
                <li><strong>Technical Data:</strong> IP address, login data, browser type and version, time zone setting, operating system, and platform.</li>
                <li><strong>Usage Data:</strong> Information about how you use our website, products, and services.</li>
                <li><strong>Marketing and Communications Data:</strong> Your preferences in receiving marketing from us and your communication preferences.</li>
              </ul>
            </div>

            <div id="usage" class="scroll-mt-24">
              <h3>3. How We Use Your Information</h3>
              <p class="mb-6">We will only use your personal data when the law allows us to. Most commonly, we use it in the following circumstances:</p>
              <ul class="mb-6">
                <li><strong>Service Delivery:</strong> To register you as a new customer and to provide and deliver our services.</li>
                <li><strong>Relationship Management:</strong> To notify you about changes to our terms or privacy policy, and to ask for reviews or take surveys.</li>
                <li><strong>Business Protection:</strong> To administer and protect our business and this website (including troubleshooting, data analysis, testing, system maintenance, support, reporting, and hosting of data).</li>
                <li><strong>Marketing:</strong> To deliver relevant website content and advertisements to you and measure or understand the effectiveness of the advertising we serve to you.</li>
                <li><strong>Improvement:</strong> To use data analytics to improve our website, products/services, marketing, customer relationships, and experiences.</li>
              </ul>
            </div>

            <div id="sharing" class="scroll-mt-24">
              <h3>4. Sharing of Information</h3>
              <p class="mb-6">We may have to share your personal data with the parties set out below:</p>
              <ul class="mb-6">
                <li><strong>Service Providers:</strong> Companies that provide IT and system administration services, payment processing, and marketing assistance.</li>
                <li><strong>Professional Advisers:</strong> Lawyers, bankers, auditors, and insurers who provide consultancy, banking, legal, insurance, and accounting services.</li>
                <li><strong>Business Transfers:</strong> Third parties to whom we may choose to sell, transfer, or merge parts of our business or our assets.</li>
                <li><strong>Legal Obligations:</strong> Regulatory authorities and law enforcement agencies where required by law.</li>
              </ul>
              <p class="mb-6">We require all third parties to respect the security of your personal data and to treat it in accordance with the law.</p>
            </div>

            <div id="cookies" class="scroll-mt-24">
              <h3>5. Cookies and Tracking</h3>
              <p class="mb-6">
                We use cookies and similar tracking technologies to track the activity on our Service and store certain information. 
                Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.
              </p>
              <p class="mb-6">
                You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some parts of our Service.
              </p>
            </div>

            <div id="rights" class="scroll-mt-24">
              <h3>6. Your Rights</h3>
              <p class="mb-6">Under certain circumstances, you have rights under data protection laws in relation to your personal data, including the right to:</p>
              <ul class="mb-6">
                <li>Request access to your personal data.</li>
                <li>Request correction of your personal data.</li>
                <li>Request erasure of your personal data.</li>
                <li>Object to processing of your personal data.</li>
                <li>Request restriction of processing your personal data.</li>
                <li>Request transfer of your personal data.</li>
                <li>Right to withdraw consent.</li>
              </ul>
              <p class="mb-6">
                If you wish to exercise any of the rights set out above, please contact us.
              </p>
            </div>

            <div id="contact" class="scroll-mt-24">
              <h3>7. Contact Us</h3>
              <p class="mb-6">
                If you have any questions about this privacy policy or our privacy practices, please contact us at:
              </p>
              <div class="not-prose mt-6 p-6 bg-slate-50 dark:bg-slate-800 rounded-xl border border-slate-200 dark:border-slate-700">
                <p class="font-bold text-slate-900 dark:text-white">Next Step Elite, Inc.</p>
                <p class="text-slate-600 dark:text-slate-400 mt-2">Doral, Florida, USA</p>
                <p class="mt-4">
                  <a href="mailto:privacy@nextstepelite.com" class="text-primary hover:underline">privacy@nextstepelite.com</a>
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
  { id: 'introduction', title: '1. Introduction' },
  { id: 'data-collection', title: '2. Data We Collect' },
  { id: 'usage', title: '3. How We Use Data' },
  { id: 'sharing', title: '4. Information Sharing' },
  { id: 'cookies', title: '5. Cookies & Tracking' },
  { id: 'rights', title: '6. Your Rights' },
  { id: 'contact', title: '7. Contact Us' },
];

useHead({
  title: 'Privacy Policy - Next Step Elite',
  meta: [
    { name: 'description', content: 'Privacy Policy for Next Step Elite. Learn how we collect, use, and protect your data.' },
  ],
});
</script>

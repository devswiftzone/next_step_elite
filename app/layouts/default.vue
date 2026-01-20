<template>
  <div class="min-h-screen flex flex-col bg-white dark:bg-dark text-slate-900 dark:text-white font-sans selection:bg-primary/30">
    <LayoutNavbar />
    <main class="flex-grow pt-16 md:pt-20">
      <slot />
    </main>
    <LayoutFooter />
  </div>
</template>

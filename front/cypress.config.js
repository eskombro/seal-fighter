const { defineConfig } = require('cypress')

module.exports = defineConfig({
  watchForFileChanges: true,
  e2e: {
    baseUrl: 'http://localhost:3000',
    specPattern: 'cypress/e2e/**/*.{js,jsx,ts,tsx}',
  },
})

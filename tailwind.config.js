/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        resilink: {
          dark: '#0f172a',
          card: '#1e293b',
          accent: '#e11d48',
          hazard: '#f97316',
          shelter: '#10b981',
          blue: '#0284c7'
        }
      },
      animation: {
        'ping-slow': 'ping 2s cubic-bezier(0, 0, 0.2, 1) infinite',
        'pulse-fast': 'pulse 1s cubic-bezier(0.4, 0, 0.6, 1) infinite',
      }
    },
  },
  plugins: [],
}

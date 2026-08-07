/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./content/**/*.md",
    "./content/**/*.html",
    "./themes/**/layouts/**/*.html"
  ],
  darkMode: 'class', // Enable class-based dark mode
    theme: {
	screens: {
            'sm': '640px',
            'md': '768px',
            'lg': '1024px',
            'xl': '1280px',
            '2xl': '1536px',
            '3xl': "1800px",
        },
    extend: {
	borderWidth:{
	    '3': '3px',
	},
      colors: {
        primary: '#3b82f6',
        secondary: '#10b981',
        accent: '#f59e0b',
        danger: '#ef4444',
      },
      fontFamily: {
        sans: ['Lexend', 'system-ui', 'sans-serif'],
        body: ['Lexend', 'system-ui', 'sans-serif'],
      },
      spacing: {
        'xs': '0.5rem',
        'sm': '0.75rem', 
        'md': '1rem',
        'lg': '1.5rem',
        'xl': '2rem',
      }
    },
  },
    plugins: [
	require('@tailwindcss/typography'),
    ],
}

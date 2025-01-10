/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/main/jte/**/*.jte"],
  theme: {
    extend: {},
  },
  plugins: [
    require('daisyui'),
  ],
}


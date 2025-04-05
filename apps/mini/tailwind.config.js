module.exports = {
  darkMode: 'class',
  content: ['src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    colors: {
      foreground: 'var(--foreground)',
      background: {
        DEFAULT: 'var(--background)',
        foreground: 'var(--background-foreground)',
      },
      primary: {
        DEFAULT: 'var(--primary)',
        foreground: 'var(--primary-foreground)',
      },
      secondary: {
        DEFAULT: 'var(--secondary)',
        foreground: 'var(--secondary-foreground)',
      },
      destructive: {
        DEFAULT: 'var(--destructive)',
        foreground: 'var(--destructive-foreground)',
      },
      muted: {
        DEFAULT: 'var(--muted)',
        foreground: 'var(--muted-foreground)',
      },
      accent: {
        DEFAULT: 'var(--accent)',
        foreground: 'var(--accent-foreground)',
      },
      popover: {
        DEFAULT: 'var(--popover)',
        foreground: 'var(--popover-foreground)',
      },
      card: {
        DEFAULT: 'var(--card)',
        foreground: 'var(--card-foreground)',
      },
    },
    fontFamily: {
      sans: ['Roboto', 'sans-serif'],
      serif: ['serif'],
      mono: ['Roboto Mono', 'Courier New', 'monospace'],
      fg: ['var(--font-founders-grotesk)'],
      inter: ['Inter', 'sans-serif'],
    },
    fontSize: {
      sm: ['15px', '20px'],
    },
    extend: {
      spacing: {
        46: '11.5rem',
        100: '26rem',
        112: '28rem',
        128: '32rem',
        144: '36rem',
      },
      borderRadius: {
        '4xl': '2rem',
      },
      animation: {
        'spin-slow': 'spin 3s linear infinite',
      },
      boxShadow: {
        lg2: '0 8px 24px 0px rgba(2, 1, 10, 0.08)',
      },
    },
  },
  plugins: [],
}

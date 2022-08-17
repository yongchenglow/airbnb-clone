module.exports = {
  "*.{js,jsx,ts,tsx,md,mdx,css,yaml,yml}": ["prettier --write", "git add"],
  "*.{erb,rb}": ["prettier --write", "bundle exec rubocop -a", "git add"],
};

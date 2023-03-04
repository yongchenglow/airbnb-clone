const ERROR = 2;

module.exports = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "subject-empty": [ERROR, "never"],
    "type-empty": [ERROR, "never"],
    "type-case": [ERROR, "always", "pascal-case"],
    "subject-case": [ERROR, "always", "sentence-case"],
    "header-max-length": [2, "always", 72],
    "type-enum": [
      2,
      "always",
      [
        // Modules
        "Booking",
        "Config",
        "Init",
        "Favourite",
        "Flat",
        "Home",
        "Housekeeping",
        "Review",
        "Style",
        "User",
      ],
    ],
  },
};

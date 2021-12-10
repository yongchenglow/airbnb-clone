const ERROR = 2;

module.exports = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "subject-empty": [ERROR, "never"],
    "type-empty": [ERROR, "never"],
    "type-case": [ERROR, "never"],
    "subject-case": [ERROR, "never"],
    "header-max-length": [2, "always", 72],
    "type-enum": [
      2,
      "always",
      [
        // Modules
        "Init",
        "Release",
        "Housekeeping",
        "Config",
        "User",
        "Flat",
        "Booking",
      ],
    ],
  },
};

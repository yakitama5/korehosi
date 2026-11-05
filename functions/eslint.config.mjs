import js from '@eslint/js';
import google from 'eslint-config-google';
import jsdoc from 'eslint-plugin-jsdoc';
import globals from 'globals';

// Retain the Google style rules while replacing rules removed from ESLint.
const {
  'require-jsdoc': requireJsdoc,
  'valid-jsdoc': _validJsdoc,
  'no-new-object': _noNewObject,
  ...googleRules
} = google.rules;

export default [
  js.configs.recommended,
  {
    files: ['**/*.js', '**/*.mjs'],
    languageOptions: {
      ecmaVersion: 2018,
      sourceType: 'commonjs',
      globals: globals.node,
    },
    plugins: {jsdoc},
    settings: {jsdoc: {
      tagNamePreference: {returns: 'return'},
      preferredTypes: {object: false},
    }},
    rules: {
      ...googleRules,
      'no-object-constructor': 'error',
      'no-unused-vars': ['error', {args: 'none', caughtErrors: 'none'}],
      'no-restricted-globals': ['error', 'name', 'length'],
      'prefer-arrow-callback': 'error',
      'quotes': ['error', 'single', {allowTemplateLiterals: true}],
      'indent': ['error', 2],
      'jsdoc/require-jsdoc': requireJsdoc,
      'jsdoc/check-param-names': ['error', {checkDestructured: false}],
      'jsdoc/check-tag-names': 'error',
      'jsdoc/check-types': ['error', {noDefaults: true}],
    },
  },
  {
    files: ['**/*.mjs'],
    languageOptions: {sourceType: 'module', ecmaVersion: 'latest'},
    rules: {'no-unused-vars': ['error', {varsIgnorePattern: '^_'}]},
  },
  {
    files: ['**/*.spec.*', '**/*.test.*'],
    languageOptions: {globals: globals.mocha},
    rules: {
      'jsdoc/require-jsdoc': 'off',
      'max-len': 'off',
    },
  },
];

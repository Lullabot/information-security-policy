# Requirements

- NodeJS version 10 or greater
- Yarn

# Installation

`yarn install`

# Testing

`yarn test`

# Spell check

This project uses [Markdown Spellcheck](https://www.npmjs.com/package/markdown-spellcheck).

To run it interactively with the defaults:

`yarn spellcheck`

To run a report:

```
yarn mdspell \
  --report \
  --en-us \
  --ignore-acronyms \
  --ignore-numbers \
  '**/*.md' '!**/node_modules/**/*.md'
```

To see all the options:

`yarn mdspell -h`

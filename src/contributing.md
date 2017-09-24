# Contributing

## Installation

https://toolchain.gitbook.com/setup.html

```
npm install gitbook-cli -g
```

PDF and Ebook Generation requirement: 

```
brew cask install calibre
```

## Writing

The major files such as `README.md`, `GLOSSARY.md`, and `SUMMARY.md` are all kept at the root level of the project to reduce clutter. All chapters and sub-chapters should be placed in the `src/` directory. 

[Defining pages and structure](https://toolchain.gitbook.com/pages.html)

```
gitbook serve
```

## Generation

https://toolchain.gitbook.com/ebook.html

Static website: 

```
gitbook build
```

PDF: 

```
gitbook pdf
```

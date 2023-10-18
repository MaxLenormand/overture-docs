# Overture How To Guides

Built using [Docusaurus 2](https://docusaurus.io/)


## Local Development

### nvm, node.js, and npm
Project uses Node.js which is prerequisite to run next instructions.

The minimum required Node.js version is `15.0.0`.

For Windows and/or WSL users on Windows (Ubuntu) here is a [link](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl) to working instructions set.

### First, install the dependencies:

```
$ npm install
```
Then, start the local server:
```
$ npm run start
```

### Editing
All of the relevant editable `.mdx` files are here:
```
docs/

```
These files may contain the headings, examples, etc. for each schema file, in markdown.

Adding descriptions to the actual schema elements, however, should be done in the schema YAML files directly in the main (`schema/`) directory.

## Publishing
```
$ npm run build
```
Docusaurus builds a static web page in the `docusaurus/build` directory. There is a Github hook that builds the website and publishes it to the gh-pages branch.

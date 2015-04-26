# <%= appName %>

## Development

### Requirements

- Node.js
- Ruby
- Bundler
- direnv (optional, recommended)

### Getting Started

1. Install dependencies

        npm install
        bunlde install

2. Add executables to PATH

      Use direnv

        direnv allow

      or export manually

        export PATH=$PWD/bin:$PWD/node_modules/.bin:$PATH

3. Run gulp

        gulp watch

4. Run electron

        electron .

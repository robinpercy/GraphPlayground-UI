Prereqs:
========
1. Install Sass: <code>gem install sass.</code>
1. Install NPM (comes bundled with nodejs)
1. Install handlebars: <code>npm install handlebars</code>
1. Install metalsmith deps: <code>npm install metalsmith metalsmith-layouts metalsmith-watch</code>
1. Install browser-sync <code>sudo npm install browser-sync -g</code>

Building:
==========
1. Compile the materialize css: <code>make</code> _The output of make will state that files are being watched. This is only to regenerate the html in public/app. It has nothing to do with browser reloads. Browser reloading is handled by browser sync._
1. run the client code in the test server: <code>make run</code>

Materialize
===========
This project uses Materialize v0.97.4. The following files and directories should be replaced if an upgrade is required:

- js/materialize.js
- js/materialize.min.js
- font/material-design-icons/
- font/roboto/
- sass/materilize.scss
- sass/components/

**Note: the non-minimized js file has been included  to help with debugging.**

Static Site Generation with Metalsmith
==========
Metalsmith is a static site generator used to apply the same layout to all
pages and to generally avoid duplicate HTML code.  For a full details, see
the project site: https://github.com/metalsmith/metalsmith but here's a quick
summary:
- The base CLI tool looks for a metalsmith.json file in the root directory to determine which plugins should be loaded.
- We use the metalsmith-layouts https://github.com/superwolff/metalsmith-layouts plugin and configure it to use the handlebars http://handlebarsjs.com/ template language so we can use HTML-like templates and partials.
- Our configuration specifies the partials directory as the source for partial templates.
- Each markdown file in html_src represents one page to be rendered and specifies the values to be subbed into that page. The one special value required is the **layout**, which determines the layout html that should be applied.
- Any partials included in a layout will be loaded from the partials directory.
- metalsmith-watch is configured to watch for any changes in the html_src, layout, or partials directories and to kickoff a rebuild when necessary. Note that all but the html_src dir needs to be set to rebuild all (\*\*/\*) otherwise they will be treated as source files (instead of templates)

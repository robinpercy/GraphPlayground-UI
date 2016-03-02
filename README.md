Prereqs:
========
1. Install Sass: <code>gem install sass.</code>
1. (Optional) Install NPM (comes bundled with nodejs):  
1. (Optional) Install http-server: <code>sudo npm install http-server -g<code>

Building:
==========
1. Compile the materialize css: <code>make sass</code>
1. Run the client code in the test server: <code>http-server -p 9999</code>

Materialize
===========
This project uses Materialize v0.97.4. The following files and directories should be replaced if an upgrade is required:

- js/materialize.js
- js/materialize.min.js
- font/material-design-icons/
- font/roboto/
- sass/materilize.scss
- sass/components/

**Note: the non-minimized js file has been included to help with debugging.**

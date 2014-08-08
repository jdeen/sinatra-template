#!/bin/zsh

# Removing each file that is used by the theme
for f in `ls archives/themes/agency/js`; do; rm -r "src/public/js/$f"; done;
for f in `ls archives/themes/agency/css`; do; rm -r "src/public/css/$f"; done;
for f in `ls archives/themes/agency/img`; do; rm -r "src/public/img/$f"; done;
for f in `ls archives/themes/agency/fonts`; do; rm -r "src/public/fonts/$f"; done;
for f in `ls archives/themes/agency/layouts`; do; rm -r "src/views/layouts/$f"; done;

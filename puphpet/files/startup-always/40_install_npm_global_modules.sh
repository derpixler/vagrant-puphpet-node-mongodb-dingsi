#!/usr/bin/env bash
npm install -g gulp-cli --no-bin-links --silent --depth=0
ln -sfn /usr/lib/node_modules/gulp-cli/bin/gulp.js /usr/bin/gulp
npm install -g csslint --no-bin-links --silent --depth=0
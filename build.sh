#!/bin/sh

# Builds the project.
#
# Currently, this only builds the front-end dependencies, since that's what most
# of our projects need. Over time, we could figure out how to include PHP build
# instructions as well.

# First clean everything, and build afterwards. After everything is finished,
# force unix newlines on compiled scripts. The unix newlines forcing is required
# because a lot of times we bundle third-party dependencies into our plugins, as
# well as the actual scripts (via `require()`). As these plugins may sometimes
# use CRLF instead of just LF, this is the only reliable way to fix those. The
# same goes for styles as well.
./node_modules/.bin/gulp clean
./node_modules/.bin/gulp
./node_modules/.bin/gulp force-unix-newlines

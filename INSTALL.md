# Install

## Development environment

For development we use:

* yarn - Node.JS package manager
* bundler - Ruby gem bundler

It is required to have:

* PHP v7
* imagick - a PHP extension

### Run

    # Install Node dependencies
    yarn

or

    yarn install


    # Install Ruby dependencies
    bundle install

If `vendor` is deleted, as we don't have anything from laravel in `vendor` then run:

    composer install --no-scripts


We should run without `--no-scripts` and it will do some job for us
in order to prepare project:

    composer install


### Setup environment

    composer run post-root-package-install
    composer run post-create-project-cmd

Update `.env` file with DB config.

### Migrate and seed DB

    php artisan migrate
    php artisan db:seed

### Test

Backend and Frontend PHP tests (unit, API, HTTP):

    ./vendor/bin/phpunit

For **end-to-end** (with JavaScript) testing with browsers you need to have website running, either in local or staging.

1. Set `APP_URL` in `.env` or `.env.dusk.local`
2. Run server if required with `php armada serve --env=.env.dusk.local`
3. Run browser tests:

    php artisan dusk


### Build

Currently, this only builds the front-end dependencies, since that's what most
of our projects need. Over time, we could figure out how to include PHP build
instructions as well.

First clean everything, and build afterwards. After everything is finished,
force unix newlines on compiled scripts. The unix newlines forcing is required
because a lot of times we bundle third-party dependencies into our plugins, as
well as the actual scripts (via `require()`). As these plugins may sometimes
use CRLF instead of just LF, this is the only reliable way to fix those. The
same goes for styles as well.

    ./node_modules/.bin/gulp clean
    ./node_modules/.bin/gulp
    ./node_modules/.bin/gulp force-unix-newlines


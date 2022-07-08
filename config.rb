# Compass
require "compass/import-once/activate"

# Require any additional compass plugins here.
require "breakpoint-slicer"
require "sass-css-importer"

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "public/styles"
sass_dir = "resources/assets/styles"
images_dir = "public/images"
javascripts_dir = "public/scripts"

# Call this function to add a path to the list of SASS import paths for your Compass project.
add_import_path "node_modules"
add_import_path Sass::CssImporter::Importer.new("node_modules")

# You can select your preferred output style here (can be overridden via the command line):
output_style = :compressed

# Set default line endings
unix_newlines = true

# Don't generate a sourcemap
sourcemap = :none

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

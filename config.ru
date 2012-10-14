# Add the current directory to the Load path
$:.<<(File.dirname(__FILE__))

require "rubygems"
require "bundler/setup"
require "sinatra"
require "sinatra/content_for2"
require "app"
require "sass/plugin/rack"
require "haml"
require "redcarpet"
require "zurb-foundation"

set run: false
set raise_erros: true

# Module configurations
Sass::Plugin.options[:style] = :compact

# Application modules
helpers Sinatra::ContentFor2
use Sass::Plugin::Rack

# Start Application
run Sinatra::Application

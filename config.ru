# Add the current directory to the Load path
$:.<<(File.dirname(__FILE__))

require "rubygems"
require "bundler/setup"
require "sinatra"
require "sinatra/content_for2"
require "haml"
require "app"

set run: false
set raise_erros: true

helpers Sinatra::ContentFor2
run Sinatra::Application

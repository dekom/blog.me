$:.<<(File.dirname(__FILE__))

require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "app"

set run: false
set raise_erros: true

run Sinatra::Application

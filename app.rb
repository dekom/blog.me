# Gems
require "haml"
require "redcarpet"

# Module Settings
set :haml, format: :html5

Tilt.register Tilt::RedcarpetTemplate::Redcarpet2, 'markdown', 'mkd', 'md'
set :markdown, no_intra_emphasis: true, strikethrough: true, views: 'markdowns'

get "/" do
  haml :index
end

get "/favicon.ico" do
end

get "/resume" do
  haml :resume
end

get "/:name" do
  haml params[:name].to_sym
end

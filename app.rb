# Module Settings
set :haml, format: :html5

Tilt.register Tilt::RedcarpetTemplate::Redcarpet2, 'markdown', 'mkd', 'md'

set :redcarpet, filter_html: true, with_toc_data: true
set :markdown, no_intra_emphasis: true, strikethrough: true, views: 'markdowns' 

get "/" do
  haml :index
end

get "/favicon.ico" do
end

get "/docs/:name" do
  haml params[:name].to_sym
end

get "/:name" do
  haml params[:name].to_sym
end

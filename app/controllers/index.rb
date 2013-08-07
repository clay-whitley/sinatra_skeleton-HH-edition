get '/' do
  haml :index
end

get '/custom_javascript.js' do
  file = "#{File.dirname(File.dirname(__FILE__))}/assets/application.coffee"
  js = CoffeeScript.compile(File.read(file))
  content_type "text/javascript"
  return js
end
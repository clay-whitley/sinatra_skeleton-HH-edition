get '/' do
  haml :index
end

get '/custom_js/:jsfile' do
  file = "#{File.dirname(File.dirname(__FILE__))}/assets/#{params[:jsfile].gsub('.js', '.coffee')}"
  js = CoffeeScript.compile(File.read(file))
  content_type "text/javascript"
  return js
end
class HelloWorld
  def call(env)
    req = Rack::Request.new(env)

    name = req.GET['name'] # post: req.POST['name']

    # Default content-type is text/html
    # Default status is 200
    Rack::Response.new.finish do |res|
       res.write "Hello, #{name}!" 
    end
  end
end

# This time, deploy using plain-old CGI through Apache/Lighttpd/etc.
hello_world_app = HelloWorld.new
Rack::Handler::CGI.run hello_world_app




get '/hello-world' do
  request.path_info   # => '/hello-world'
  request.fullpath    # => '/hello-world?foo=bar'
  request.url         # => 'http://example.com/hello-world?foo=bar'
end








# config.ru
require 'rack'

rack_app = Rack::Builder.new do
  # Usage: curl -F "info=@alpha.txt" localhost:9292/sorter
  req = Rack::Request.new(env)
  info = req.POST['info']

  map "/sorter" do
    run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["#{name}"]] }
  end

end

Rack::Handler::WEBrick.run rack_app, :Port => 9292


=begin
map '/sorter' do
  params[:info][:tempfile].readlines.sort
end 
=end


#You could use Rack::Request yourself to modify it.
def call(env)
    req = Rack::Request.new(env)
    req.POST["authenticity_token"] = "foo"
  end
  
  # https://github.com/rack/rack/blob/master/lib/rack/request.rb
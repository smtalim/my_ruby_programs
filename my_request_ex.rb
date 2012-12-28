# my_request_ex.rb
class MyRequestEx
  def call(env)
    req = Rack::Request.new(env)
    text = req.params['text']
   
    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      str = "The reversed string is: #{text.reverse}" 
      res.write str
    end
  end
end

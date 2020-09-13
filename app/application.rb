# initial attempt
# class Application
#   def call(env)
#     resp = Rack::Response.new
    
#     current_hour = Time.now.hour

#     if current_hour < 12
#       resp.write "Good Morning!"
#     else
#       resp.write "Good Afternoon!"
#     end
#     resp.finish
#   end
# end

# improved_attempt
class Application
  def call(env)
    response = Rack::Response.new
    Time.now.hour < 12 ? (response.write "Good Morning!") : (response.write "Good Afternoon!")
    response.finish
  end
end

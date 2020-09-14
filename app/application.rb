# Instructions
# Edit your code in app/application.rb.

# Create your application with the following conditions:

# If it's before noon, greet the user with 
# "Good Morning!"
# If it's after noon, greet the user with 
# "Good Afternoon!". 
# Remember that getting the time may return 
# results in 24 hour time! Anytime on or after 12 is the afternoon.


class Application 
    def call(env)
        resp = Rack::Response.new
        t=Time.now
        if t.hour > 11
            resp.write "<b>Good Afternoon!</b>"
        else 
            resp.write "<b>Good Morning!</b>"
        end
        resp.finish
    end
end
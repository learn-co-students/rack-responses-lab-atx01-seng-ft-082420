class Application

    def call(env)
        resp = Rack::Response.new

        (Time.now.to_i < 12) ?  ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]

        resp.write "Good Morning!"
        resp.write "Good Afternoon!"

        resp.finish
    end
    

end 
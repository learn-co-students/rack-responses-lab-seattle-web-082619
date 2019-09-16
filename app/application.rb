require 'time'

class Application
    def call(env)
        response = Rack::Response.new
        hour = Time.now.hour.to_i

        if hour < 12
            response.write "Good Morning!"
        else 
            response.write "Good Afternoon!"
        end
        response.finish
    end
end
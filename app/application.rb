# frozen_string_literal: true

class Application
  def call(_env)
    resp = Rack::Response.new

    resp.write Time.now.hour < 12 ? 'Good Morning!' : 'Good Afternoon!'

    resp.finish
  end
end

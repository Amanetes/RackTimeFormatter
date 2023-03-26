# frozen_string_literal: true

class RequestHandlerMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new(env)

    if request.request_method != 'GET'
      [405, {}, ['Method Not Allowed']]
    else
      @app.call(env)
    end
  end
end

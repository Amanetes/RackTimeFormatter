# frozen_string_literal: true

require_relative 'time_formatter'

class Router
  def call(env)
    @request = Rack::Request.new(env)

    case @request.path_info
    when '/time'
      begin
        formatted_time = TimeFormatter.call(@request.params)
        [200, {}, [formatted_time]]
      rescue StandardError
        [400, {}, ['Bad Request']]
      end
    else
      [404, {}, ['404 Not Found']]
    end
  end
end

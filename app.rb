# frozen_string_literal: true

require 'rack'
require_relative 'app/router'
require_relative 'app/request_handler_middleware'

class App
  def self.init
    Rack::Builder.new do |builder|
      builder.use Rack::ContentType, 'text/plain'
      builder.use RequestHandlerMiddleware
      builder.run Router.new
    end
  end
end

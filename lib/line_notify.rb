require "line_notify/version"
require 'faraday'

module LineNotify
  class Client
    LINE_NOTIFY_API_HOST = 'https://notify-api.line.me'
    TOKEN = 'set your token'

    def initialize
      @connection = Faraday::Connection.new(url: LINE_NOTIFY_API_HOST)
    end

    def push(message)
      response = @connection.post do |req|
        req.url 'api/notify'
        req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        req.headers['Authorization'] = "Bearer #{TOKEN}"
        req.body = {message: message}
      end
      response.body
    end
  end
end

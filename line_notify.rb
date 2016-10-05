# frozen_string_literal: true
require 'faraday'
class LineNotify
  LINE_NOTIFY_API_HOST = 'https://notify-api.line.me'
  TOKEN = 'set your token'

  def initialize
    @connection = Faraday::Connection.new(url: LINE_NOTIFY_API_HOST)
  end

  def push(message)
    @response = @connection.post do |req|
      req.url 'api/notify'
      req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
      req.headers['Authorization'] = "Bearer #{token}"
      req.body = {message: message}
    end
    @response
  end
end
# frozen_string_literal: true
require './line_notify'
client = LineNotify.new

loop do
  puts 'lets send!'
  client.push(gets.chomp)
end
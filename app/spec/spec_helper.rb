require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'ahoy.rb')

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure { |c| c.include RSpecMixin }
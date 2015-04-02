$: << File.expand_path('../..', __FILE__)

require 'byebug'
require 'webmock/rspec'
require 'active_support'
require 'active_support/core_ext'

Dir['spec/support/**/*.rb'].each { |f| require f }

if ENV['coverage'] == 'on'
  require 'simplecov'
  SimpleCov.start 'rails' do
    minimum_coverage 100
  end
end

RSpec.configure do |config|
  config.order = 'random'
  WebMock.disable_net_connect!(allow_localhost: true, allow: 'codeclimate.com')
end

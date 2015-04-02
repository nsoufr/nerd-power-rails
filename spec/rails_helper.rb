ENV['RAILS_ENV'] ||= "test"

require "codeclimate-test-reporter"
require 'rails_helper'
require 'config/environment'
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!
CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.before do
    DatabaseCleaner.clean
  end

  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!

config.include FactoryGirl::Syntax::Methods
  DatabaseCleaner.strategy = :deletion
end

Capybara.configure do |config|
  config.javascript_driver = :webkit
  config.default_wait_time = 4
end

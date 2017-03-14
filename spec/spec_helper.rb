require 'simplecov'
require 'coveralls'
require 'pry'
require 'lita/rspec'
require 'simplecov-json'
require 'simplecov-rcov'

SimpleCov.start

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::JSONFormatter,
  SimpleCov::Formatter::RcovFormatter,
  Coveralls::SimpleCov::Formatter
]

require_relative '../handlers/test.rb'
require_relative '../handlers/ping.rb'
require_relative '../handlers/helpers.rb'

Lita.version_3_compatibility_mode = false

RSpec.configure do |config|
  config.mock_with :rspec do |mocks_config|
    mocks_config.verify_doubled_constant_names = true
    mocks_config.verify_partial_doubles = true
  end
end

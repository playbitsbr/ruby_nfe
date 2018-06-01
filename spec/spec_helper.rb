require 'coveralls'
Coveralls.wear!

require 'bundler/setup'
require 'ruby_nfe'
require 'rspec'
require 'vcr'
require 'factory_bot'

path = File.expand_path('spec/support')
Dir.glob("#{path}/**/*.rb", &method(:require))

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/cassettes"
  config.hook_into :webmock
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    FactoryBot.find_definitions
  end

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

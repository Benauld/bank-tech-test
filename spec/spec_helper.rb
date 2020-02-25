# frozen_string_literal: true

require 'simplecov'
require 'simplecov-console'

x = SimpleCov::Formatter::Console
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([x])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mCconsidered running rubocop to improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

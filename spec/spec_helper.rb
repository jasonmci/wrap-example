require 'turnip/capybara'
require 'faker'
require 'airborne'
require './lib/wrap_helper.rb'

Capybara.default_driver = :selenium

RSpec.configure do |config|
   config.include WrapHelper
end


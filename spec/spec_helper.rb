require 'turnip/capybara'
require 'faker'
require 'airborne'
require './lib/wrap_helper.rb'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

RSpec.configure do |config|
   config.include WrapHelper
end


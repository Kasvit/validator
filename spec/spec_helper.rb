require './initializers/startup'
require 'faker'
require 'factory_bot'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.color = true

  config.before(:suite) do
    FactoryBot.find_definitions
  end
end

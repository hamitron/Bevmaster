# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


# State machine
module StateMachine
  # Extensions for integrations of state machine
  module Integrations
    # ActiveModel extension that fixes the non-public around_validation error
    module ActiveModel
      send :public, :around_validation
    end
  end
end
# frozen_string_literal: true
require 'dry-component'
require 'dry/component/container'

module Dry
  module Test
    class App < Dry::Component::Container
      configure do |config|
        config.name = :app
        config.root = root
        config.auto_register = 'lib/dry/test/commands'
      end

      load_paths! 'lib/dry/test/commands'
    end

    Import = App.injector
    App.finalize!

    require 'dry/test/version'
    require 'dry/test/dtos'
    require 'dry/test/types'
    require 'dry/test/commands'
  end
end

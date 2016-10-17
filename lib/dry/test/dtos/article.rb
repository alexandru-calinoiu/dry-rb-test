# frozen_string_literal: true
require 'dry/equalizer'
require 'dry/struct'

module Dry
  module Test
    module Dtos
      class Article < Dry::Struct
        include Dry::Equalizer(:id, :title, :body)

        attribute :id, Dry::Test::Types::Int
        attribute :title, Dry::Test::Types::String
        attribute :body, Dry::Test::Types::String
      end
    end
  end
end

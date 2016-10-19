# frozen_string_literal: true
require 'dry/struct'

module Dry
  module Test
    module Dtos
      class Author < Dry::Struct::Value
        attribute :id, Dry::Test::Types::Int
        attribute :age, Dry::Test::Types::Age
        attribute :email, Dry::Test::Types::Email
      end
    end
  end
end

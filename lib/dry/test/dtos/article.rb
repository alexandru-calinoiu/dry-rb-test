# frozen_string_literal: true
require 'dry/equalizer'

module Dry
  module Test
    module Dtos
      class Article
        include Dry::Equalizer(:id, :title, :body)

        attr_reader :id, :title, :body

        def initialize(id, title, body)
          @id = id
          @title = title
          @body = body
        end
      end
    end
  end
end

# frozen_string_literal: true
require 'dry/container/stub'

module Dry
  module Test
    module Commands
      class CreateArticle
        include Dry::Test::Import['dry.test.commands.validate_articles', 'dry.test.commands.persist_articles']

        def call(params)
          result = validate_articles.call(params)
          persist_articles.call(params) if result.success?
        end
      end
    end
  end
end

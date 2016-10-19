# frozen_string_literal: true
module Dry
  module Test
    module Commands
      class CreateArticle
        include Dry::Test::AutoInject[:validate_articles, :persist_articles]

        def call(params)
          result = validate_articles.call(params)
          persist_articles.call(params) if result.success?
        end
      end
    end
  end
end

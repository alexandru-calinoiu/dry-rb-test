# frozen_string_literal: true

module Dry
  module Test
    module Commands
      autoload :CreateArticle, 'dry/test/commands/create_article'
      autoload :ValidateArticles, 'dry/test/commands/validate_articles'
      autoload :PersistArticles, 'dry/test/commands/persist_articles'
    end
  end
end

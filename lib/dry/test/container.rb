# frozen_string_literal: true
require 'dry-container'
require 'dry-auto_inject'

module Dry
  module Test
    class Container
      extend Dry::Container::Mixin
    end

    Container.register(:validate_articles, -> { Dry::Test::Commands::ValidateArticles.new })

    Container.register(:persist_articles, -> { Dry::Test::Commands::PersistArticles.new })

    Container.register(:create_article, -> { Dry::Test::Commands::CreateArticle.new })

    AutoInject = Dry::AutoInject(Container)
  end
end

# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Dry::Test::Container do
  it 'will register validate articles' do
    expect(described_class[:validate_articles]).to be_an_instance_of(Dry::Test::Commands::ValidateArticles)
  end

  it 'will register persist articles' do
    expect(described_class[:persist_articles]).to be_an_instance_of(Dry::Test::Commands::PersistArticles)
  end

  it 'will register create article' do
    expect(described_class[:create_article]).to be_an_instance_of(Dry::Test::Commands::CreateArticle)
  end
end

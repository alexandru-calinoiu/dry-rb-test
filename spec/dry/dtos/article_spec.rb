# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Dry::Test::Dtos::Article do
  it 'will compare' do
    some_article = described_class.new(id: 42, title: 'Some article', body: 'Some body')
    same_article = described_class.new(id: 42, title: 'Some article', body: 'Some body')

    expect(some_article).to eq same_article
    expect(some_article.equal?(same_article)).to be_falsey
  end
end

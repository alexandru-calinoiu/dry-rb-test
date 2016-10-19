# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Dry::Test::Commands::CreateArticle do
  subject(:create_article) { described_class.new(validate, persist) }

  let(:validate) do
    -> (input) { double('result', success?: !input[:title].empty?) }
  end

  let(:persist) { -> (input) { input } }

  context 'successful validation' do
    let(:input) { { title: 'some title' } }

    it 'persists the data' do
      expect(create_article.call(input)).to eq input
    end
  end

  context 'unsuccessful validation' do
    let(:input) { { title: '' } }

    it 'returns false' do
      expect(create_article.call(input)).to be_falsey
    end
  end
end

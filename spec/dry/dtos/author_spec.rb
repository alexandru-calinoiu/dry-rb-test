# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Dry::Test::Dtos::Author do
  it 'will set age' do
    author = described_class.new(id: 1, age: 19, email: 'email@email.com')

    expect(author.age).to eq 19
  end

  it 'will not set invalid age' do
    expect do
      described_class.new(id: 1, age: 17, email: 'email@email.com')
    end.to raise_exception(Dry::Struct::Error)
  end
end
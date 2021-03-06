# frozen_string_literal: true
require 'dry/types'

module Dry
  module Test
    module Types
      include Dry::Types.module

      Email = String.constrained(format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
      Age = Int.constrained(gt: 18)
    end
  end
end

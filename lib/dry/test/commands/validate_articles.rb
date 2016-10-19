# frozen_string_literal: true

module Dry
  module Test
    module Commands
      class ValidateArticles
        def call(_article)
          Struct.new(success?: true)
        end
      end
    end
  end
end

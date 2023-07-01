# frozen_string_literal: true

module RhymeScape
  module Views
    module Poems
      class Index < RhymeScape::View
        expose :poems do |poems:|
          poems
        end
      end
    end
  end
end

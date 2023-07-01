# frozen_string_literal: true

module RhymeScape
  module Views
    module Poems
      class Show < RhymeScape::View
        expose :poem do |poem:|
          poem
        end
      end
    end
  end
end

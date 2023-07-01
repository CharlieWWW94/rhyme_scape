# frozen_string_literal: true

module RhymeScape
  module Actions
    module Poems
      class New < RhymeScape::Action
        def handle(*, response)
          response.render(view)
        end
      end
    end
  end
end

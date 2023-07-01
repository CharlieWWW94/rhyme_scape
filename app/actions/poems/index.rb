# frozen_string_literal: true

module RhymeScape
  module Actions
    module Poems
      class Index < RhymeScape::Action
        include Deps["persistence.rom"]

        def handle(*, response)
          # Need to create a repo for this
          poems = rom.relations[:poems].to_a
          response.render(view, poems: poems)
        end
      end
    end
  end
end

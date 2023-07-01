# frozen_string_literal: true

module RhymeScape
  module Actions
    module Poems
      class Show < RhymeScape::Action
        include Deps["persistence.rom"]

        def handle(request, response)
          # Need to create a repo for this
          id = request.params[:id]
          poem = rom.relations[:poems].by_pk(id).first
          response.render(view, poem: poem)
        end
      end
    end
  end
end

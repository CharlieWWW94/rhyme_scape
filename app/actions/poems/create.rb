# frozen_string_literal: true

module RhymeScape
  module Actions
    module Poems
      class Create < RhymeScape::Action
        include Deps["persistence.rom"]

        params do
          required(:poem).hash do
            required(:title).filled(:string)
            optional(:author).filled(:string)
            required(:body).filled(:string)
            required(:prompt).filled(:string)
          end
        end

        def handle(request, response)
          if request.params.valid?
            rom.relations[:poems].changeset(:create, request.params[:poem]).commit
            response.redirect_to routes.path(:poems)
          else
            response.status = 422
            response.body = "That didn't work"
          end
        end
      end
    end
  end
end

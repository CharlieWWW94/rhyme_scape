# frozen_string_literal: true

module RhymeScape
  class Routes < Hanami::Routes
    root to: "poems.index"
    get "/poems", to: "poems.index"
    get "/poems/:id", to: "poems.show"
    post "/poems", to: "poems.create"
    get "/poems/new", to: "poems.new"
  end
end

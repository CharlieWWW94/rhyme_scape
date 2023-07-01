module RhymeScape
  module Persistence
    module Relations
      class Poems < ROM::Relation[:sql]
        schema(:poems, infer: true)
      end
    end
  end
end
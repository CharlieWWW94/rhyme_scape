# frozen_string_literal: true

require "hanami"

module RhymeScape
  class App < Hanami::App
    config.middleware.use :body_parser, :json
  end
end

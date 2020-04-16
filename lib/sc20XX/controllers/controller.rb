require_relative '../events'

module Sc20XX
  module Controllers
    # Control our view, events, and rendering.
    class Controller
      attr_reader :events

      def initialize(view)
        @view = view
        @events = Events.new
      end

      def render
        @view.render
      end
    end
  end
end

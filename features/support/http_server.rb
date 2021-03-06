# frozen_string_literal: true

module Nonnative
  module Features
    class HTTPServer < Nonnative::HTTPServer
      def configure(http)
        http.register(Hello)
        http.register(Health)
        http.register(Metrics)
      end
    end
  end
end

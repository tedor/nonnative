# frozen_string_literal: true

Nonnative.start

at_exit do
  Nonnative.stop
end

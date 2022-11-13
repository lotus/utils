# frozen_string_literal: true

require "rspec"

RSpec.configure do |config|
  config.around(:example, silence_deprecations: true) do |example|
    Hanami::Utils::IO.silence_warnings do
      example.run
    end
  end
end

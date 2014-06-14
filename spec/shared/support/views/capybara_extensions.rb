module RSpec
  module Shared
    module Support
      module Views
        module CapybaraExtensions
          def rendered
            Capybara.string @rendered
          end

          def within(*args)
            yield rendered.find *args
          end
        end
      end
    end
  end
end
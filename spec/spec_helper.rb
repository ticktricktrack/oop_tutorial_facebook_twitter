$: << File.expand_path(File.dirname(__FILE__) + "/..")
require "boot"

RSpec.configure do |config|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

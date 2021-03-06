# frozen_string_literal: true

require 'jekyll/sanelist'
require 'rspec/collection_matchers'
require_relative 'sanelist_helpers'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  include SanelistHelpers

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

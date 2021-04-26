# frozen_string_literal: true

require 'jekyll-sanelist'

require_relative 'jekyll-sanelist/sanelist' if defined?(Jekyll) && defined?(Liquid)

module Jekyll
  ##
  # Sanelist plugin contains the sanelist filter
  # The filter is used to produce a list consisting of prefix, items, delimiters and suffix
  # While iterating you can generate each item appropriately
  module Sanelist
  end
end

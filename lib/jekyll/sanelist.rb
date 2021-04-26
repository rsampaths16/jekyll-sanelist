# frozen_string_literal: true

require 'liquid'
require_relative 'sanelist/version'

module Jekyll
  module Sanelist
    ##
    # Module containg sanelist filters
    module SanelistFilter
      ITEM = 'item'
      DELIMITER = 'delimiter'

      ##
      # Takes a regular list and outputs a sanelist
      # @param [Array] input The input list which needs to be converted into a sanelist
      # @return [Array] A list of sane objects of items separated by delimiters
      def sanelist(input)
        raise ArgumentError, 'Input to filter sanelist is not an Array' unless input.is_a?(Array)

        output = []

        input.each_with_index do |value, index|
          output << get_item(value, index, input.size)

          output << get_delimiter(index, input.size) if index != (input.size - 1)
        end

        output
      end

      def get_item(data, index, input_size)
        unless (index >= 0) && (input_size >= 1) && (index < input_size)
          raise ArgumentError, 'Inputs index or input_size are invalid'
        end

        {
          'data' => data,
          'isFirst' => (index == 0),
          'isLast' => (index == (input_size - 1)),
          'type' => ITEM
        }
      end

      def get_delimiter(index, input_size)
        unless (index >= 0) && (input_size >= 2) && (index < (input_size - 1))
          raise ArgumentError, 'Inputs index or input_size are invalid'
        end

        {
          'isFirst' => (index == 0),
          'isLast' => (index == (input_size - 2)),
          'type' => DELIMITER
        }
      end

      private :get_item, :get_delimiter
    end
  end
end

Liquid::Template.register_filter(Jekyll::Sanelist::SanelistFilter)

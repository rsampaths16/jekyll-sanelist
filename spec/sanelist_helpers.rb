# frozen_string_literal: true

module SanelistHelpers
  def item(data, first, last)
    {
      'data' => data,
      'isFirst' => first,
      'isLast' => last,
      'type' => 'item'
    }
  end

  def delimiter(first, last)
    {
      'isFirst' => first,
      'isLast' => last,
      'type' => 'delimiter'
    }
  end
end

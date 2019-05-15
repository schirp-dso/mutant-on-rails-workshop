# frozen_string_literal: true

module MyRange
  # Test if two ranges overlap
  #
  # @example
  #   MyRange.overlap?(1..2, 3..4) # => false
  #   MyRange.overlap?(1..5, 3..4) # => true
  #
  # @param [Range] left
  # @param [Range] right
  #
  # @return [Boolean]
  def self.overlap?(left, right)
    right.first <= left.last && right.last >= left.first
  end
end # MyRange

class NotIntegerValueIsProvided < StandardError
end

class InvertedRangeError < StandardError
end

class ClosedRange
  attr_reader :start_point, :end_point

  def initialize(start_point, end_point)
    @start_point = start_point
    @end_point = end_point

    raise NotIntegerValueIsProvided unless @start_point.is_a?(Integer) && @end_point.is_a?(Integer)
    raise InvertedRangeError if @start_point > @end_point
  end

  def display_range_array
    return [start_point] if @start_point == @end_point
    [@start_point,@end_point]
  end

  def is_in_range?(number)
    return number >= @start_point && number <= @end_point
  end
end

class FloatNotAllowedError < StandardError
end

class NotIntegerValueIsProvided < StandardError
end

class ClosedRange
  def display_range_array(start_point, end_point)
    return NotIntegerValueIsProvided unless start_point.is_a?(Integer) && end_point.is_a?(Integer)
    return StandardError if start_point > end_point

    return [start_point] if start_point == end_point
    [start_point, end_point]
  end
end

class FloatNotAllowedError < StandardError
end

class ClosedRange
  def display_range_array(start_point, end_point)
    return [start_point] if start_point == end_point
    return StandardError if start_point > end_point
    return FloatNotAllowedError unless start_point.is_a?(Integer) && end_point.is_a?(Integer)

    [start_point, end_point]
  end
end

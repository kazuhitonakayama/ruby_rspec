class ClosedRange
  def display_range_array(start_point, end_point)
    return StandardError if start_point > end_point
    [start_point, end_point]
  end
end

def ordinal_indicator(number)
  last_2d = number % 100
  if last_2d == 11 or last_2d == 12 or last_2d == 13
    return "#{number.to_s}th"
  else
    last_1d = number % 10
    case last_1d
    when 1
      return "#{number.to_s}st"
    when 2
      return "#{number.to_s}nd"
    when 3
      return "#{number.to_s}rd"
    else
      return "#{number.to_s}th"
    end
  end
end

(1..100).each_with_index {|n| puts ordinal_indicator(n)}

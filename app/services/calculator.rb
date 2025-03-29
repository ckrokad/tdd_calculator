
class Calculator

  def add(input_str)
    if input_str == ""
      return 0
    end

    values = parse_string(input_str)
    result = 0
    values.each do |v|
      result += v.to_i
    end
    result
  end

  def parse_string(s)
    s.split(',')
  end
end

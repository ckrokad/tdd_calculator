
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
    final_arr = []

    delimiter = ","
    if s[0...2] == "//"
      delimiter = s[2]
      s = s[3...]
    end

    input_values = s.split(delimiter)
    input_values.each do |w|
      final_arr += w.split("\n")
    end
    final_arr
  end
end

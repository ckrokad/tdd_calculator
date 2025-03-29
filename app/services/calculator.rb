
class Calculator

  def add(input_str)
    if input_str == ""
      return 0
    end

    values = parse_string(input_str)
    result = 0
    values.each do |v|
      v = v.to_i
      if v < 0
        return "negative numbers not allowed #{v}"
      end
      result += v unless v >= 1001
    end
    result
  end

  def parse_string(s)
    final_arr = []

    delimiters, s = parse_delimiter(s)
    final_arr = [s]
    delimiters.each do |delimiter|
      temp = []
      final_arr.each do |w|
        temp += w.split(delimiter)
      end
      final_arr = temp
    end

    data = []
    final_arr.each do |w|
      data += w.split("\n")
    end

    data
  end

  def parse_delimiter(s)
    delimiters = [',']
    if s[0...2] == "//"
      if s[2] == '['
        i = 2
        delimiter_end_idx = 3
        temp_delimiter = ""
        while i < s.length
          if s[i] == '['
            temp_delimiter = ""
          elsif s[i] == ']'
            delimiters.append(temp_delimiter)
            delimiter_end_idx = i+1
          else
            temp_delimiter += s[i]
          end
          i += 1
        end
        s = s[delimiter_end_idx...]
      else
        delimiters.append(s[2])
        s = s[3...]
      end
    end

    [delimiters, s]
  end
end

class Day
  def initialize(date)
    @date = date.to_s
    @orthography = [
      {"day" => "1", "orth" => "st"},
      {"day" => "2", "orth" => "nd"},
      {"day" => "3", "orth" => "rd"},
      {"day" => "4", "orth" => "th"},
      {"day" => "5", "orth" => "th"},
      {"day" => "6", "orth" => "th"},
      {"day" => "7", "orth" => "th"},
      {"day" => "8", "orth" => "th"},
      {"day" => "9", "orth" => "th"},
      {"day" => "10", "orth" => "th"},
      {"day" => "11", "orth" => "th"},
      {"day" => "12", "orth" => "th"},
      {"day" => "13", "orth" => "th"},
      {"day" => "14", "orth" => "th"},
      {"day" => "15", "orth" => "th"},
      {"day" => "16", "orth" => "th"},
      {"day" => "17", "orth" => "th"},
      {"day" => "18", "orth" => "th"},
      {"day" => "19", "orth" => "th"},
      {"day" => "20", "orth" => "th"},
      {"day" => "21", "orth" => "st"},
      {"day" => "22", "orth" => "nd"},
      {"day" => "23", "orth" => "rd"},
      {"day" => "24", "orth" => "th"},
      {"day" => "25", "orth" => "th"},
      {"day" => "26", "orth" => "th"},
      {"day" => "27", "orth" => "th"},
      {"day" => "28", "orth" => "th"},
      {"day" => "29", "orth" => "th"},
      {"day" => "30", "orth" => "th"},
      {"day" => "31", "orth" => "st"}
    ]
  end

  def pretty
    @orthography.each do |y|
      if y["day"] == @date
        @day = "#{@date}#{y["orth"]}"
      end
    end
    return @day
  end
end

require 'date'

class Birthday
attr_reader :day, :month, :year, :day_pretty

  def initialize(date)
    @day = date[8..9]
    @day_pretty = nil
    @month_pretty = nil
    @month = date[5..6]
    @year = date[0..3]
    @today = Date.today
    @currentyear = Date.today.year
    @orthography = [
      {"day" => "01", "orth" => "st"},
      {"day" => "02", "orth" => "nd"},
      {"day" => "03", "orth" => "rd"},
      {"day" => "04", "orth" => "th"},
      {"day" => "05", "orth" => "th"},
      {"day" => "06", "orth" => "th"},
      {"day" => "07", "orth" => "th"},
      {"day" => "08", "orth" => "th"},
      {"day" => "09", "orth" => "th"},
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
    @months_hash = [
      {"month" => "January", "month_num" => "01"},
      {"month" => "February", "month_num" => "02"},
      {"month" => "March", "month_num" => "03"},
      {"month" => "April", "month_num" => "04"},
      {"month" => "May", "month_num" => "05"},
      {"month" => "June", "month_num" => "06"},
      {"month" => "July", "month_num" => "07"},
      {"month" => "August", "month_num" => "08"},
      {"month" => "September", "month_num" => "09"},
      {"month" => "October", "month_num" => "10"},
      {"month" => "November", "month_num" => "11"},
      {"month" => "December", "month_num" => "12"}
    ]
  end

  def pretty_day
    @orthography.each do |y|
      if y["day"] == @day
        @day_pretty = "#{@day.to_i}#{y["orth"]}"
      end
    end
    return @day_pretty
  end

  def pretty_month
    @months_hash.each do |y|
      if y["month_num"] == @month
        @month_pretty = "#{y["month"]}"
      end
    end
    return @month_pretty
  end

  def until
    bday = Date.new(year?, @month.to_i, @day.to_i)
    return (bday - @today).to_i
  end

  def year?
    if had_birthday_this_year?
      @currentyear += 1
    else
      @currentyear
    end
    return @currentyear
  end

  def age
    if had_birthday_this_year?
      return (@currentyear - @year.to_i) + 1
    else
      return @currentyear - @year.to_i
    end
  end

  def had_birthday_this_year?
    @today > Date.new(@currentyear, @month.to_i, @day.to_i)
  end
end

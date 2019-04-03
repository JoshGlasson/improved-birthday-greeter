require 'date'

class Birthday
attr_reader :day, :month

  def initialize(day, month)
    @day = day.to_i
    @month = month
    @year = Date.new(Date.today.year)
    @months_hash = [
      {"month" => "January", "month_num" => "1"},
      {"month" => "February", "month_num" => "2"},
      {"month" => "March", "month_num" => "3"},
      {"month" => "April", "month_num" => "4"},
      {"month" => "May", "month_num" => "5"},
      {"month" => "June", "month_num" => "6"},
      {"month" => "July", "month_num" => "7"},
      {"month" => "August", "month_num" => "8"},
      {"month" => "September", "month_num" => "9"},
      {"month" => "October", "month_num" => "10"},
      {"month" => "November", "month_num" => "11"},
      {"month" => "December", "month_num" => "12"}
    ]
    @date = Date.today
  end



  def until
    bday = Date.new(year, month_number(@month), @day.to_i)
    return (bday - @date).to_i
  end

  def month_number(month)
    @months_hash.each do |y|
      if y["month"] == month
        return y["month_num"].to_i
      end
    end
  end

  def year
    if @date > Date.new(@year.year, month_number(@month), @day)
      @year += 365
    else
      @year
    end
    return @year.year
  end
end

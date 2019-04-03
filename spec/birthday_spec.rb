require 'birthday'

describe Birthday do
  describe '#it stores the birthday' do
    it 'stores the day' do
      bday = Birthday.new("8", "June")
      expect(bday.day).to eq 8
    end

    it 'stores the month' do
      bday = Birthday.new("8", "June")
      expect(bday.month).to eq "June"
    end
  end

  describe '#calcs days until' do
    it 'can calculate days until birthday' do
      bday = Birthday.new("8", "June")
      expect(bday.until).to eq 66
    end
  end
end

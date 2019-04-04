require 'birthday'

describe Birthday do
  describe '#it stores the birthday' do
    it 'stores the day' do
      bday = Birthday.new("1995-06-08")
      expect(bday.day).to eq "08"
    end

    it 'stores the month' do
      bday = Birthday.new("1995-06-08")
      expect(bday.month).to eq "06"
    end

    it 'stores the year' do
      bday = Birthday.new("1995-06-08")
      expect(bday.year).to eq "1995"
    end

  end

  describe '#calcs days until' do
    let(:bday) { double :birtday }
    it 'can calculate days until birthday' do
      allow(bday).to receive(:bday).and_return(Date.new(2019, 6, 8))
      allow(bday).to receive(:date).and_return(Date.new(2019, 4, 3))
      allow(bday).to receive(:until).and_return(bday.bday - bday.date)
      expect(bday.until).to eq 66
    end
  end
end

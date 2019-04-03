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
    let(:bday) { double :birtday }
    it 'can calculate days until birthday' do
      allow(bday).to receive(:bday).and_return(Date.new(2019, 6, 8))
      allow(bday).to receive(:date).and_return(Date.new(2019, 4, 3))
      allow(bday).to receive(:until).and_return(bday.bday - bday.date)
      expect(bday.until).to eq 66
    end
  end
end

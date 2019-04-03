require 'day'

describe Day do
  describe '#creates new day class' do
    it 'adds orthography' do
      day = Day.new(8)
      expect(day.pretty). to eq "8th"
    end
  end
end

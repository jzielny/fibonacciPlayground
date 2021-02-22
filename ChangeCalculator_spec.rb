require './ChangeCalculator.rb'

RSpec.describe ChangeCalculator do

  it "calculates the change for 92 cents" do
      change_calculator = ChangeCalculator.new()
      change = change_calculator.calculateChange(92)
      expect(change).to eq([3,1,1,2])
    end

    it "calculates the change for 5 cents" do 
        change_calculator = ChangeCalculator.new()
        change = change_calculator.calculateChange(5)
        expect(change).to eq([0,0,1,0])
    end

    it "checks for proper execution on null case" do
    change_calculator = ChangeCalculator.new()
    change = change_calculator.calculateChange(0)
    expect(change).to eq([0,0,0,0])
end

end
  

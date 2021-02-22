class ChangeCalculator

    def initialize()

    end
    def calculateChange(cents)
        @quarters =0
        @dimes = 0
        @nickels = 0
        @pennies = 0

       @quarters = cents/25
       puts "cents: " + cents.to_s
       puts "Quarters: "  + @quarters.to_s
       cents = cents.modulo(25)
       puts "cents: " + cents.to_s

       
       @dimes = cents/10
       puts "dimes: "  + @dimes.to_s
       cents = cents.modulo(10)
       puts "cents: " + cents.to_s
       @nickels = cents/5
       puts "nickels: "  + @nickels.to_s
       @pennies = cents.modulo(5)
       puts "cents: " + @pennies.to_s
       @sequence = [@quarters, @dimes, @nickels, @pennies]
       

    end

end


if __FILE__ == $0
    #Generates Sequence
    sequenceGen = ChangeCalculator.new()
    change = sequenceGen.calculateChange(92)
    puts change.join(", ")

end
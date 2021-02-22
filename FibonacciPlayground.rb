#!/usr/bin/env ruby

class FibbonaciSequenceGenerator
  attr_accessor :sequence

  # Create the object
  def initialize(numbers)
    generate_fibonacci_sequence(numbers)
  end

  # Generate the sequence
  def generate_fibonacci_sequence(numbers)
      @numbers = numbers
    if @numbers.nil?
     puts "Fibonacci Sequence cap not given"
     return
    elsif @numbers > 0
      #If fibonacci cap is given, generate the sequence
      @fib1 = 0
      @fib2 = 1
      @sequence = [@fib1, @fib2]
      while @fib2 <= @numbers do
          @fib1, @fib2 = @fib2, @fib1 + @fib2
          @sequence << @fib2
      end 
    else
      puts "Fibonacci cap given was negative or not valid"
    end
  end
  
  def filter_out_odd_numbers
      return @sequence.select{ |x| x.modulo(2) == 0}
  end

end

def test



if __FILE__ == $0
  #Generates Sequence
  ruby FibonacciPlayground.rb 4000000 
  puts "sequence is being generated up to " +ARGV[0]
  sequenceGen = FibbonaciSequenceGenerator.new(ARGV[0].to_i)
  puts "Sequence generated is: " + sequenceGen.sequence.join(", ")

  #Filters the Sequence
  puts "The sequence with all odd numbers filtered out is: " + sequenceGen.filter_out_odd_numbers.join(", ")
  #Sums the sequence
  summedSequence = sequenceGen.filter_out_odd_numbers.sum
  puts "The sum of the filtered sequence is: " + summedSequence.to_s
end
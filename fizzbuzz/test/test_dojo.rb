require './lib/dojo'

require 'minitest/unit'
require 'minitest/spec'
require 'minitest/autorun'

describe Dojo do
  before do
    @dojo = Dojo.new(15)
    @result = @dojo.sequence
  end

  it "should print each element" do
    assert_equal @result.length, 15 
  end

  it "should print Fizz in multiples of 3" do
    assert_equal "Fizz", @dojo.fizzbuzz(3)
  end
  
  it "shoudl print Buzz in multiples of 5" do
    assert_equal "Buzz", @dojo.fizzbuzz(5)
  end

  it "should print FizzBuzz in multiples of 3 and 5" do
    assert_equal "FizzBuzz", @dojo.fizzbuzz(15)
  end

  it "should be able to print himself as string" do
    assert_equal "1, 2, Fizz, 4, Buzz, Fizz", "#{Dojo.new(6)}"
  end
end
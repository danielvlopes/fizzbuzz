require './lib/dojo'

require 'minitest/unit'
require 'minitest/spec'
require 'minitest/autorun'

describe Dojo do                
 before(:each) do
   @dojo = Dojo.new
 end 
 it 'should receive a number' do
   assert_equal 1, @dojo.fizzbuzz(1)
 end
  
 it 'should return fizz when receive multiples of 3' do
   assert_equal 'fizz', @dojo.fizzbuzz(3)
 end 
 
 it 'should return buzz when receive multiples of 5' do
   assert_equal 'buzz', @dojo.fizzbuzz(5)
 end 
 
 it 'should return fizzbuzz when receive multiples of 3 and 5' do
   assert_equal 'fizzbuzz', @dojo.fizzbuzz(15)
 end  
 
 it 'should return the following expression -> 1 2 fizz 4 buzz ...' do
   expected = "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz"
   assert_equal expected, @dojo.sequence(15)
 end
end              



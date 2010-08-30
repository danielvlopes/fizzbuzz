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
  
 it 'dever retornar fizz se o parametro for multiplo de 3' do
   assert_equal 'fizz', @dojo.fizzbuzz(3)
 end 
 
 it 'dever retornar buzz se o parametro for multiplo de 5' do
   assert_equal 'buzz', @dojo.fizzbuzz(5)
 end 
 
 it 'dever retornar fizzbuzz se o parametro for multiplo de 3 e 5' do
   assert_equal 'fizzbuzz', @dojo.fizzbuzz(15)
 end  
 
 it 'deve retornar a seguinte expressao -> 1 2 fizz 4 buzz ...' do
   expected = "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz"
   assert_equal expected, @dojo.sequence(15)
 end
end              



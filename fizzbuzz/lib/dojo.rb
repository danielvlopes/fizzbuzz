class Dojo
   def fizzbuzz(number) 
     ret = ""             
     ret += "fizz" if number %3 == 0
     ret += "buzz" if number %5 == 0
     ret.empty? ? number : ret             
   end
   def sequence(limit) 
      (1..limit).map do |i|
        fizzbuzz i
      end.join(" ")
   end
end
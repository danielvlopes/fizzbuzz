class Dojo

  def initialize(limit)
    @limit = limit
  end

  def fizzbuzz(numero)
    x = ''
    x += 'Fizz' if numero % 3 == 0
    x += 'Buzz' if numero % 5 == 0
    x.empty? ? numero : x
  end

  def sequence
    (1..@limit).collect do |i|
      fizzbuzz(i)
    end
  end

  def to_s
    sequence.join(', ')
  end
end
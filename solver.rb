class Solver
  def factorial(num)
    if num.negative?
      raise 'n must be a non-negative integer'
    elsif [0, 1].include?(num)
      1
    else
      num * factorial(num - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  # def fizzbuzz(num)
  #   string = ''
  #   (1..num).each do |i|
  #     string += if (i % 3).zero? && (i % 5).zero?
  #                 'fizzbuzz'
  #               elsif (i % 3).zero?
  #                 'fizz'
  #               elsif (i % 5).zero?
  #                 'buzz'
  #               else
  #                 i.to_s
  #               end
  #   end
  #   string
  # end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end

class Integer
  def factors
    num = self.abs
    primes = []
    factor = 2
    while num > 1
      if num % factor == 0
        num /= factor
        primes << factor if primes.index(factor).nil?
      else
        factor += 1
      end
    end
    primes
  end
end

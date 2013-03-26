class Number
  def Number.bin2dec(number)
    i = 0
    new_value = 0
    number.split("").reverse.each do |char|
      new_value += char.to_i * (2**i)
      i += 1
    end
    new_value
  end

  def Number.dec2bin(number)
    digits = []
    while number != 0 do
      remin = number % 2
      number = number / 2
      digits.unshift(remin)
    end
    digits.join("")
  end

  def Number.bin2hex(numbers)
    binding.pry
    numbers_array = numbers.split("")
    array_size = numbers_array.count
    array_extra = array_size/4
    array_mod = array_size/4
    i = 0
    digits = []
    array_mod.times do
      digits_array = numbers_array.reverse.slice(i,4)
      # binary = Number.bin2dec(digits_array.reverse.join(","))
      i += 4
      digits << binary
    end
  end

end
def romanize(input)
  raise ArgumentError, "can not encode zero" if input == 0
  raise ArgumentError, "can not encode negative number" if input < 0
  numerals = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 8 => "VIII", 7 => "VII",
              6 => "VI", 5 => "V", 4 => "IV", 3 => "III", 2 => "II", 1 => "I", 0 => ""}
  roman = ""

  while input > 0
    numerals.select! {|x| x <= input}
    amount = numerals.to_a.flatten
    roman << amount[1]
    input -= amount[0]
  end

  return roman
end
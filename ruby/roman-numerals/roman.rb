class Fixnum

  ROMAN_NUMERAL = {
    0 => "", 1 => "I", 4 => "IV", 5 => "V",
    9 => "IX",
    10 => "X",40 => "XL", 50 => "L",
    90 => "XC",
    100 => "C", 400 => "CD", 500 => "D",
    900 => "CM",
    1000 => "M"
  }

  def to_roman
    number_places = self.to_s.chars
    zeroes = number_places.length - 1

    number_places.inject("") do |romans, number|
      romans += ROMAN_NUMERAL[(number + "0" * zeroes).to_i]
      zeroes -= 1
      romans
    end
  end
end

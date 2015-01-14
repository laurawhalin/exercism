class LeapYear

  def check(year)
    if year % 100 == 0     # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
      false
    elsif year % 400 == 0  # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
      true
    elsif year % 4 == 0    # => false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false
      true                 # => true, true, true, true, true
    else
      false                # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
    end                    # => false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false
  end
end

leap_years = LeapYear.new  # => #<LeapYear:0x007f8fa11bdd60>
2014.upto 2034 do |year|   # => 2014
if leap_years.check(year)  # => false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, false
  puts year                # => nil, nil, nil, nil, nil
end                        # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
end                        # => 2014

# >> 2016
# >> 2020
# >> 2024
# >> 2028
# >> 2032

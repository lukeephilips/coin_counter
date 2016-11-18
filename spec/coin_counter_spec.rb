require('rspec')
require('pry')
require ('coin_counter')

describe('String#coin_counter') do
  # it('converts user input to Fixnum') do
  #   expect(".80".coin_counter()).to(eq(0.8))
  # end
  # it('returns pocket value') do
  #   expect(".80".coin_counter()).to(eq(0.8))
  # end
  # it('loops through coin values hash and returns value at each index point') do
  #   expect(".80".coin_counter()).to(eq(0.25))
  # end

  # it('returns the correct amount of change for .25 cents') do
  #   expect(".25".coin_counter()).to(eq("1 quarter"))
  # end

  # it(' returns the correct amount of change for .49 cents') do
  #   expect(".49".coin_counter()).to(eq("1 quarter 1 dime 2 nickels 4 pennies"))
  # end
  it(' returns the correct amount of change for .56 cents') do
    expect(56.coin_counter()).to(eq("2 quarters 1 nickel 1 pennie"))
  end
  it(' returns the correct amount of change for .57 cents') do
    expect(49.coin_counter()).to(eq("1 quarter 1 dime 2 nickels 4 pennies"))
  end
  it(' returns the correct amount of change for .58 cents') do
    expect(99.coin_counter()).to(eq("2 quarters 1 dime 7 nickels 4 pennies"))
  end
  it(' returns the correct amount of change for .68 cents') do
    expect(68.coin_counter()).to(eq("2 quarters 1 dime 1 nickel 3 pennies"))
  end
  it(' returns the correct amount of change for 1.68 cents') do
    expect(168.coin_counter()).to(eq("1 dollar 2 quarters 1 dime 1 nickel 3 pennies"))
  end
end

describe('String#convert_string_to_number') do
  it(' returns the correct amount of change for .56 cents') do
    expect('.56'.convert_string_to_number()).to(eq("2 quarters 1 nickel 1 pennie"))
  end
  it(' returns the correct amount of change for .57 cents') do
    expect('.49'.convert_string_to_number()).to(eq("1 quarter 1 dime 2 nickels 4 pennies"))
  end
  it(' returns the correct amount of change for .58 cents') do
    expect('.99'.convert_string_to_number()).to(eq("2 quarters 1 dime 7 nickels 4 pennies"))
  end
  it(' returns the correct amount of change for .68 cents') do
    expect('.68'.convert_string_to_number()).to(eq("2 quarters 1 dime 1 nickel 3 pennies"))
  end
  it(' returns the correct amount of change for 1.68 cents') do
    expect('1.68'.convert_string_to_number()).to(eq("1 dollar 2 quarters 1 dime 1 nickel 3 pennies"))
  end
end

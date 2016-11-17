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

  it('returns the correct amount of change for .25 cents') do
    expect(".25".coin_counter()).to(eq("1 quarter"))
  end

  it(' returns the correct amount of change for .49 cents') do
    expect(".49".coin_counter()).to(eq("1 quarter 2 dimes 4 pennies"))
  end


end

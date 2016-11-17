require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the coin counter path", {:type => :feature}) do
  it("processes the user input and returns an amount of change") do
    visit('/')
    fill_in('change', :with => '.99')
    click_button('Change!')
    expect(page).to have_content('2 quarters 1 dime 7 nickels 4 pennies')
  end
end

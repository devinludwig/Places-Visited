require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path of places', {:type => :feature}) do
  it('displays a list of places that have been entered through the form input (one at a time)') do
    visit('/')
    fill_in('input_places', :with => 'montana')
    click_button('Enter')
    expect(page).to have_content('montana')
  end
end

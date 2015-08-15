require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word list path', {:type => :feature}) do
  it('process the user entry of the word and returns a list of words') do
    visit('/words')
    fill_in('dictionary', :with => 'Apple')
    click_button(Submit)
    expect(page).to have_content('Apple')
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word list path', {:type => :feature}) do
  it('process the user entry of the word and returns a list of words') do
    visit('/words/new')
    fill_in('Word', :with => 'Apple')
    click_button('Add Word')
    expect(page).to have_content('Success!')
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('play the game path', {:type => :feature}) do
  it('starts the game') do
    visit('/')
    click_button('Proceed')
    expect(page).to have_content('At night')
  end
  it('fills in the answer for riddle 1') do
    visit('/')
    click_button('Proceed')
    fill_in('user-input', :with => 'stars')
    click_button('Proceed')
    expect(page).to have_content('I never was')
  end
end

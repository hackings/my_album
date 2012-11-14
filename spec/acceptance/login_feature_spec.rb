require 'acceptance/acceptance_helper'

feature 'Login feature', %q{
  In order to login and logout
  As a user   
  I want to log into the app
} do


  scenario 'should show login page' do
    user_login

    page.should have_content("Sign out")
    page.should have_content("List of albums")
    page.should have_content("Search")

    click_link('Sign out')
    page.should have_content("Sign in")

  end
  
end

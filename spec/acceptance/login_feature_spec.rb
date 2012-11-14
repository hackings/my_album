require 'acceptance/acceptance_helper'

feature 'Login feature', %q{
  In order to login and logout
  As a user   
  I want to log into the app
} do


  background do
    @user = FactoryGirl.create(:user)
  end  

  scenario 'should show login page' do
    visit login_page

    page.should have_content("Sign in")
    visit login_page
    fill_in "user[email]", :with => @user.email
    fill_in "user[password]", :with => 'password'
    click_button('Sign in')

    page.should have_content("Sign out")
    page.should have_content("List of albums")
    page.should have_content("Search")

    click_link('Sign out')
    page.should have_content("Sign in")

  end
  
end

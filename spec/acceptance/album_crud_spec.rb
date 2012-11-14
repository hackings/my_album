require 'acceptance/acceptance_helper'

feature 'Album crud', %q{
  In order to create show update and delete album
  As a user
  I want to go to albums list page
} do
  
  background do
    @user = FactoryGirl.create(:user)
    visit login_page
    fill_in "user[email]", :with => @user.email
    fill_in "user[password]", :with => 'password'
    click_button('Sign in')
  end

  scenario 'should create a album' do
    page.should have_content("List of albums")
    click_link('New Album')

    fill_in "album[name]", :with => 'My Album'
    attach_file 'album[cover]', :with => 'home/vishnu/Pictures/vishnu.jpg'
    click_button('Save')
    page.should have_content('My Album')
  end

  scenario 'update the album' do
    @album = FactoryGirl.create(:album)
    visit("albums/#{@album}")
    click('Edit')

    page.should have_content('Edit My Album')
    fill_in "album[name]", :with =>  'My First Album'
    click_button('Save')

    page.should have_content('My First Album')
  end

  scenario "search album" do
    @album = FactoryGirl.create(:album)
    visit albums_page
    fill_in "search", :with =>  'album'
    click_button('Search')

    page.should have_content('album')
  end
  
  scenario "delete the album" do
    @album = FactoryGirl.create(:album)
    visit("albums/#{@album}")
    click('Remove')
    page.should have_content('Album removed successfully.')
    page.should_not have_content('My First Album')
  end

end

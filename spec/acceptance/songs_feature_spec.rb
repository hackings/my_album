require 'acceptance/acceptance_helper'

feature 'Songs feature', %q{
  In order to add songs to album
  As a logged in user
  I want to add songs to given album
} do

  background do
    @album = FactoryGirl.create(:album)
    user_login
  end

  scenario 'add songs to album' do
    visit "albums/#{@album.id}" #album show page and list of all songs for that album
    click_link('Add song')

    fill_in "song[name]", :with => 'First song'
    attach_file 'song[song]', :with => 'c:/images/test.mp3'
    click_button('Save')
  end

end

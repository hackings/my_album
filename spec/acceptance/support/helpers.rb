module HelperMethods
  # Put helper methods you need to be available in all acceptance specs here.
  def user_login
    @user = FactoryGirl.create(:user)
    visit login_page
    fill_in "user[email]", :with => @user.email
    fill_in "user[password]", :with => 'password'
    click_button('Sign in')
  end  

end

RSpec.configuration.include HelperMethods, :type => :acceptance

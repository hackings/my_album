require 'spec_helper'

describe Album do
  describe 'Associations' do
    it{
      should have_many(:songs).dependent(:destroy)
      should belong_to(:user)
    }
  end

  describe 'Validations' do
    it{
      should validate_presence_of(:name)
    }
  end  
end

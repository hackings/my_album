require 'spec_helper'

describe User do
  describe 'Associations' do
    it{
      should have_many(:albums).dependent(:destroy)
      should have_many(:songs).through(:albums)
    }
  end  
end

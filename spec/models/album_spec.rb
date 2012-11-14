require 'spec_helper'

describe Album do
  describe 'Associations' do
    it{
      should have_many(:songs).dependent(:destroy)
      should belong_to(:user)
    }
  end
end

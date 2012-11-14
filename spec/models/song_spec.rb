require 'spec_helper'

describe Song do
  describe 'Associations' do
    it{
      should belong_to(:album)
    }
  end

  describe 'Validations' do
    it{
      should validate_presence_of(:name)
      should validate_presence_of(:song)
    }
  end  
end

require 'spec_helper'

describe Song do
  describe 'Associations' do
    it{
      should belong_to(:album)
    }
  end
end

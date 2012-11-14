class Song < ActiveRecord::Base
  attr_accessible :name, :song

  belongs_to :album
end

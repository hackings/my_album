class Song < ActiveRecord::Base
  attr_accessible :name, :song

  belongs_to :album

  validates :name, :song, :presence => true
end

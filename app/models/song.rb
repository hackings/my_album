class Song < ActiveRecord::Base
  attr_accessible :name, :song
  mount_uploader :song, SongUploader

  belongs_to :album

  validates :name, :song, :presence => true
end

class Album < ActiveRecord::Base
  attr_accessible :cover, :name

  mount_uploader :cover, CoverUploader

  has_many :songs, :dependent => :destroy
  belongs_to :user

  validates :name, :presence => true
end

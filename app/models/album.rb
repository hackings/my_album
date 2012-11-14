class Album < ActiveRecord::Base
  attr_accessible :cover, :name

  has_many :songs, :dependent => :destroy
  belongs_to :user
end

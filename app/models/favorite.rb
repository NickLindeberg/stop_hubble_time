class Favorite < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :link

end

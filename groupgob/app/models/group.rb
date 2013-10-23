class Group < ActiveRecord::Base
  attr_accessible :email
  belongs_to :entry
  

end

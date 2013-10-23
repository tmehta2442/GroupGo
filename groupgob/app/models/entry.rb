class Entry < ActiveRecord::Base
  attr_accessible :where_to, :what_for
  has_many :groups
end

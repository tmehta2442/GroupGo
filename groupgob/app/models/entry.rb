class Entry < ActiveRecord::Base
  attr_accessible :where_to, :what_for
  has_many :groups
  has_many :messages, dependent: :destroy
  belongs_to :user
end

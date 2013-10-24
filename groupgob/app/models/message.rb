class Message < ActiveRecord::Base
  attr_accessible :message
  belongs_to :entry
end

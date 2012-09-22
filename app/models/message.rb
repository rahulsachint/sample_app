class Message < ActiveRecord::Base
  attr_accessible :content, :recipient_id
  
  belongs_to :user
  
  validates :content, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true
  validates :recipient_id, :presence => true
  
  default_scope :order => 'messages.created_at DESC'
end

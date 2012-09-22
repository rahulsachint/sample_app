class Message < ActiveRecord::Base
  attr_accessible :content, :recipient_id, :attachment
  
  belongs_to :user

  validates :content, :presence => true, :length => { :maximum => 500 }
  validates :user_id, :presence => true
  validates :recipient_id, :presence => true
  
  mount_uploader :attachment, AttachmentUploader
  
  default_scope :order => 'messages.created_at DESC'
  
  # def before_create
  #     input = self.attachment
  #     @binary = Binary.create(:attachment => input)
  #     self.binary_id = @binary.id
  #     self.filename = input.original_filename
  #     self.content_type = input.content_type.chomp
  #     self.size = @binary.data.size
  # end
end

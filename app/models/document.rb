class Document < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  validates_uniqueness_of :name
  attr_accessible :attachment, :name
end

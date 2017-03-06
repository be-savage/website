class Challenge < ApplicationRecord
  validates :label, presence: true
  validates :author, presence: true

  enum status: [ :active, :wip, :completed, :archived ]

  # Picture
  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end

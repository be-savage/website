class Challenge < ApplicationRecord
  validates :label, presence: true, length: { minimum: 5, maximum: 250 }
  validates :author, presence: true, length: { minimum: 2, maximum: 150 }

  enum status: [ :active, :wip, :completed, :archived ]

  # Picture
  has_attached_file :picture
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end

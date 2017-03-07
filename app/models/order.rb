class Order < ApplicationRecord
  validates :place, presence: true
  validates :place_details, length: { maximum: 150 }
  validates :content, presence: true, length: { minimum: 5, maximum: 500 }
  validates :author, presence: true, length: { minimum: 2, maximum: 150 }
  validates :recontact_info, length: { maximum: 150 }

  enum status: [ :active, :archived, :completed ]

  belongs_to :place, {optional: true}
  belongs_to :stand, {optional: true}
end

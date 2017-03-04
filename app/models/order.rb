class Order < ApplicationRecord
  validates :place, presence: true
  validates :content, presence: true
  validates :author, presence: true

  enum status: [ :active, :archived, :completed ]

  belongs_to :place, {optional: true}
  belongs_to :stand, {optional: true}
end

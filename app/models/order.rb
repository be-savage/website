class Order < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true

  belongs_to :stand, {optional: true}
end

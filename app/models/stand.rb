class Stand < ApplicationRecord
  validates :label, presence: true
  validates :location, presence: true

  has_many :order, dependent: :nullify

  def name
    label
  end
end

class Place < ApplicationRecord
  validates :label, presence: true

  belongs_to :stand, optional: true
  has_many :order, dependent: :nullify

  def name
    label
  end
end

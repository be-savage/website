class Team < ApplicationRecord
  validates :label, presence: true

  has_many :user, dependent: :nullify

  def name
    label
  end
end

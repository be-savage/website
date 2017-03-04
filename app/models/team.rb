class Team < ApplicationRecord
  validates :label, presence: true

  has_many :users, dependent: :nullify

  def name
    label
  end
end

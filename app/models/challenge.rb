class Challenge < ApplicationRecord
  validates :label, presence: true
  validates :author, presence: true

  enum status: [ :active, :wip, :completed, :archived ]
end

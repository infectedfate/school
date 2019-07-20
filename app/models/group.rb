class Group < ApplicationRecord
  has_many :students

  validates :number, :character, presence: true

end

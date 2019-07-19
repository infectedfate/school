class Group < ApplicationRecord
  has_many :students

  validates :number, :character, prescense: true

end

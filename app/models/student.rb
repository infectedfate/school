class Student < ApplicationRecord
  belongs_to :group
  belongs_to :teacher
  has_many :perfomances

  validates :name, presence: true
end

class Student < ApplicationRecord
  belongs_to :class
  belongs_to :teacher
  has_many :perfomance

  validates :name, presence: true
end

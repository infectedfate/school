class Student < ApplicationRecord
  belongs_to :class
  belongs_to :teacher
  has_one :perfomance
end

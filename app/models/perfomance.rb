class Perfomance < ApplicationRecord
  belongs_to :student
  has_many :subjects

  validates :subject, :mark, presence: true
end

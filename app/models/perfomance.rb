class Perfomance < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :subject, :mark, presence: true
end

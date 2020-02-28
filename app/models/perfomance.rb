class Perfomance < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :subject, :mark, presence: true

  # Показать среднюю оценку ученика по предмету
  def self.average_mark_for_subject(student_id, subject_id)
    marks = Perfomance.where(student_id: student_id, subject_id: subject_id).pluck(:mark)
    marks.sum/marks.size.to_f
  end
  # Показать среднюю оценку ученика по всем предметам
  def self.average_mark_for_all_subjects(student_id)
    marks = Perfomance.where(student_id: student_id).pluck(:mark)
    marks.sum/marks.size.to_f
  end
end

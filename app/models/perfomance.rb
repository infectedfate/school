class Perfomance < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates :subject, :mark, presence: true

  # Показать среднюю оценку ученика по предмету
  def self.average_mark_for_subject(student_id, subject_id)
    average_mark = Integer.new
    marks = Array.new
    Perfomance.where(student_id: student_id, subject_id: subject_id).each {|e| marks << e.mark}
    average_mark = marks.sum/marks.size.to_f
    puts average_mark
  end

  def self.average_mark_for_all_subjects(student_id)
    marks = Array.new
    Perfomance.where(student_id: student_id).each {|e| marks << e.mark}
    average_mark = marks.sum/marks.size.to_f
    puts average_mark
  end
end

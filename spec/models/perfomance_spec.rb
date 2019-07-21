require 'rails_helper'

RSpec.describe Perfomance, type: :model do
  before do
    @perfomance = Perfomance.new(student_id: 1, mark: 5, subject_id: 5)
  end

  subject { @perfomance }
end

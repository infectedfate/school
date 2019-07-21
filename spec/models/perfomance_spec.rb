require 'rails_helper'

RSpec.describe Perfomance, type: :model do
  before do
    @perfomance = Perfomance.new(student_id: 1, mark: 5, subject_id: 5)
  end

  subject { @perfomance }

  it {should respond_to :mark}
  it {should respond_to :student_id}
  it {should respond_to :subject_id}

  describe "when mark is not present" do
    before { @perfomance.mark = " " }
    it { should_not be_valid }
  end

  describe "when mark is too long" do
    before { @perfomance.mark = "a"* 2 }
    it { should_not be_valid }
  end

  describe "mark must be integer" do
    before { @perfomance.mark = 1 }
    it {should be_valid}
  end
end

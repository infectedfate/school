require 'rails_helper'

RSpec.describe Subject, type: :model do
  before do
    @subject = Subject.new(name: "examlpe name")
  end

  subject { @subject }

  it {should respond_to :name}

  describe "when name is not present" do
    before { @subject.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @subject.name = "a"* 15 }
    it { should_not be_valid }
  end

end

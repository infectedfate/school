require 'rails_helper'

RSpec.describe Group, type: :model do

  before do
    @group = Group.new(character: "A", number: 1)
  end

  subject { @group }

  it {should respond_to :character}
  it {should respond_to :number}

  describe "character must be string" do
    before { @group.character = "B" }
  end

  describe "group character must be 1" do
    before { @group.character = "A" }
  end


  describe "when character format is invalid" do
   it "should be invalid" do
      addresses = %w[sda 1 12 Ad AA]
      addresses.each do |invalid_characters|
        @group.character = invalid_characters
        expect(@group).not_to be_valid
      end
    end
  end

  describe "when character format is valid" do
   it "should be valid" do
      addresses = %w[a A]
      addresses.each do |valid_characters|
        @group.character = valid_characters
        expect(@group).to be_valid
      end
    end
  end

  describe "when character is not present" do
    before { @group.character = " " }
    it { should_not be_valid }
  end
  describe "when number is not present" do
    before { @group.number = " " }
    it { should_not be_valid }
  end
end

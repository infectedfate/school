require 'rails_helper'

RSpec.describe Teacher, type: :model do

  before do
    @teacher = Teacher.new(name: "Example user", email: "examlpe@mail.com",
       password: "foobar", password_confirmation: "foobar")
  end
  subject { @teacher }

  it { should respond_to(:email) }
  it { should respond_to(:name) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }
  it { should be_valid }

  describe "when name is not present" do
    before { @teacher.name = " " }
    it { should_not be_valid }
  end
  describe "when email is not present" do
    before { @teacher.email = " " }
    it { should_not be_valid }
  end
  describe "when name is too long" do
    before { @teacher.name = "a"* 51 }
    it { should_not be_valid }
  end

  describe "with a password that's too short" do
   before { @teacher.password = @teacher.password_confirmation = "a" * 5 }
   it { should be_invalid }
 end

 describe "when email format is invalid" do
  it "should be invalid" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                   foo@bar_baz.com foo@bar+baz.com]
    addresses.each do |invalid_address|
      @teacher.email = invalid_address
      expect(@teacher).not_to be_valid
    end
  end
end

describe "when email format is valid" do
  it "should be valid" do
    addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
    addresses.each do |valid_address|
      @teacher.email = valid_address
      expect(@teacher).to be_valid
    end
  end
end

describe "when email adress is already taken" do
  before do
    teacher_with_same_email = @teacher.dup
    teacher_with_same_email.email = @teacher.email.upcase
    teacher_with_same_email.save
  end

  it { should_not be_valid }
end

describe "when password is not present" do
  before do
    @teacher = Teacher.new(name: "Example teacher", email: "teacher@school.com",
                   password: " ", password_confirmation: " ")
  end
it { should_not be_valid }
end

describe "when password doesn't match confirmation" do
  before { @teacher.password_confirmation = "mismatch" }
  it { should_not be_valid }
end

describe "return value of authenticate method" do
  before { @teacher.save }

  let(:found_teacher) { Teacher.find_by(email: @teacher.email) }

  describe "with valid password" do
    it { should eq found_teacher.authenticate(@teacher.password) }
  end

  describe "with invalid password" do
    let(:teacher_for_invalid_password) { found_teacher.authenticate("invalid") }
    it { should_not eq teacher_for_invalid_password }
    specify { expect(teacher_for_invalid_password).to be false }
    end
  end
  
end

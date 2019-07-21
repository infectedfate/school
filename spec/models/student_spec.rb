require 'rails_helper'

RSpec.describe Student, type: :model do

  before do
    @student = Student.new(name: "example name", parent_email: "example_mail@mail.ru", parent_name: "example parent",
    group_id: 1, teacher_id: 1)
  end

  subject { @student }

  it {should respond_to :name}
  it {should respond_to :parent_email}
  it {should respond_to :parent_name}
  it {should respond_to :group_id}
  it {should respond_to :teacher_id}

  describe "when name is not present" do
    before { @subject.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @subject.name = "a"* 51 }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
   it "should be invalid" do
     addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                    foo@bar_baz.com foo@bar+baz.com]
     addresses.each do |invalid_address|
       @student.parent_email = invalid_address
       expect(@student).not_to be_valid
     end
   end
 end

 describe "when email format is valid" do
   it "should be valid" do
     addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
     addresses.each do |valid_address|
       @student.parent_email = valid_address
       expect(@student).to be_valid
     end
   end
 end

 describe "when email adress is already taken" do
   before do
     teacher_with_same_email = @student.dup
     teacher_with_same_email.email = @student.parent_email.upcase
     teacher_with_same_email.save
   end

   it { should_not be_valid }
 end
end

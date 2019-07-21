require 'rails_helper'

RSpec.describe Student, type: :model do

  before do
    @student = Student.new(name: "example name", parent_email: "ex@ex@mail.ru", parent_name: "example parent",
    group_id: 1, teacher_id: 1)
  end

  subject { @student }

  it {should respond_to :name}
  it {should respond_to :parent_email}
  it {should respond_to :parent_name}
  it {should respond_to :group_id}
  it {should respond_to :teacher_id}


end

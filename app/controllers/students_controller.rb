class StudentsController < ApplicationController

  before_action :set_student, only: %i[show edit update destroy]
  before_action :find_teacher, only: %i[new create]

  def index
  end

  def show
  end

  def destroy
    @student.destroy
  end

  def edit
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(students_params.merge(teacher_id: @teacher))

    if @student.save
      redirect_to teacher_student_path(@student)
    else
      render :new
    end
  end

  def update
    if @student.update(students_params)
      redirect_to teacher_student_path(@student)
    else
      render :edit
    end
  end

  private

  def find_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end

  def set_student
    @student = Student.find(params[:id])
  end

  def students_params
    params.require(:students).permit(:name, :parent_name, :parent_email, :group_id, :teacher_id, :gender)
  end
end

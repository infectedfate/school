class TeachersController < ApplicationController

  before_action :set_teacher, only: %i[show destroy update edit]

  def index

  end

  def update

  end

  def destroy

  end

  def edit

  end

  def create
    @teacher = Teacher.create(teacher_params)

    if @teacher.save
      log_in @teacher
      flash[:success] = "Welcome"
      redirect_to teachers_path(@teacher)
    else
      render :new
    end
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  private

  def teacher_params
      params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end

class SubjectsController < ApplicationController
before_action :set_subject, only: %i[destroy edit update show]
  def new
    @subject = Subject.new
  end

  def destroy
    @subject.destroy
    redirect_to subjects_path
  end

  def edit
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to subjects_path
    else
      render :new
    end
  end

  def show
  end

  private

  def set_subject
    @subject = Sebject.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:name)
  end
end

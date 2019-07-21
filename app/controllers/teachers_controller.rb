class TeachersController < ApplicationController

  def index

  end

  def update

  end

  def destroy

  end

  def edit

  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end
end

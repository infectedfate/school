class GroupsController < ApplicationController

  before_action :set_group, only: %i[show edit update destoy]

  def index
  end

  def new
    @group = Group.new
  end

  def show
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path
  end

  def edit
  end

  def update
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:character, :number)
  end
end

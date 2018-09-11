class ListsController < ApplicationController
  before_action :set_list, only:[:show, :edit, :destroy, :update]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to board_list_path, notice: "List Created Successfully"
    else
      render :new
  end
end

  def edit
  end

  def update
    if @list.update
      redirect_to board_lists_path, notice: "List Updated Successfully"
    else
      render :edit
  end
end

  def destroy
    @list.destroy
    redirect_to , board_lists_path, notice: "Running Riot"
  end

  private

  def list_params
    params.require(:list).permit(:title, :tasks)
  end

  def set_list
    @list = Lists.find(params[:id])
  end
end

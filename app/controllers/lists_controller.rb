class ListsController < ApplicationController
  before_action :set_list, only:[:show, :edit, :destroy, :update]

  def index
    @lists = current_board.list
  end

  def show
  end

  def new
    @list = current_board.list.new
  end

  def create
    @list = current_board.list.new(list_params)
    if @list.save
      redirect_to lists_show_path
    else
      render :new
  end
end

  def edit
  end

  def update
    if @list.update
      redirect_to current_board, notice: "List Updated Successfully"
    else
      render :edit
  end
end

  def destroy
    @list.destroy
    redirect_to current_board, notice: "Running Riot"
  end

  private

  def list_params
    params.require(:list).permit(:title, :tasks)
  end

  def set_list
    @list = current_board.lists.find(params[:id])
  end
end

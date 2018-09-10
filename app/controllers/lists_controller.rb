class ListsController < ApplicationController
  
  def index
    @lists = Lists.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
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
      redirect_to lists_show_path
    else
      render :update
  end
end

  def destroy
    @list.destroy
  end

  private

  def list_params
    params.require(:list).permit(:title, :tasks)
  end
end

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
      redirect_to
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:title, :tasks)
  end


end

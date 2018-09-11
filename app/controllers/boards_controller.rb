class BoardsController < ApplicationController
  before_action :set_board, only:[:show, :update, :destroy, :edit]

  def index
    @boards = Board.all 
    #@lists = List.all
  end

  def show
  end

  def new
    @board = Board.new 
  end

  def create 
    @board = Board.new(board_params)
  if @board.save
    redirect_to @board 
  else   
    render :new
  end
end

  def update
  end

  def destroy
    @board.destroy
    redirect_to tasks_path 
  end






private
  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:work, :chores)
  end

end
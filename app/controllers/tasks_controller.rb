class TasksController < ApplicationController
  before_action :set_list
  before_action :set_task, only: [:show, :update, :destroy, :edit]

  def index
    @tasks = Task.all 
  end

  def show
  end

  def new
    @task = Task.new 
  end

  def edit 
    @task = Task.find(params[:id])

  end

  def create 
    # binding.pry
    @task = @list.tasks.new(task_params)

  if @task.save
    redirect_to list_task_path(@task)   
  else   
    render :new
  end
end

  def update
    if Task.find(params[:id]).update(task_params)
      redirect_to list_tasks_path
    else render :edit   
    end 
  end

  def destroy
    @task.destroy
    redirect_to list_tasks_path 
  end


private
  
def set_task
    @task = Task.find(params[:id])
  end

def set_list
    @list = List.find(params[:list_id])
  end

  def task_params
    params.require(:task).permit(:name, :comment)
  end

end

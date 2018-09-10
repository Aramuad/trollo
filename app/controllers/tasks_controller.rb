class TasksController < ApplicationController
<<<<<<< HEAD
  before_action :set_tasks, only: [:show, :update, :destroy, :edit]
=======
  before_action :set_task, only:[:show, :update :destroy :edit]
>>>>>>> 9a9598dc3c58c18e9eba3d9b35aec17a83e5043d

  def index
    @tasks = Task.all 
  end

  def show
  end

  def new
    @task = Task.new 
  end

  def create 
    @task = Task.new(task_params)
  if @task.save
    redirect_to @task 
  else   
    render :new
  end
end

  def update
  end

  def destroy
    @task.destroy
    redirect_to tasks_path 
  end


private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :body, :comment)
  end

end
class TasksController < ApplicationController
  before_action :set_tasks, only: [:show, :update :destroy :edit]

  def index
    @task = Tasks.all 

  end

  def show
  end

  def new
  end
end

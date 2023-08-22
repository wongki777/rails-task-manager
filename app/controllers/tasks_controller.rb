class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
    # get all tasks from the database
  end

  def show
    # @task = Task.find(params[:id])
    # Get the task with the given id from the database
  end

  def new
    @task = Task.new # Needed to instantiate the form_with
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # redirect to the show page
    redirect_to tasks_path
  end

  def edit
    # get the task with the given id from the database
    # @task = Task.find(params[:id])
  end

  def update
    # get the task with the given id from the database
    # @task = Task.find(params[:id])
    # update the task with the given params
    @task.update(task_params)
    # redirect to the show page
    redirect_to task_path(@task)
  end

  def destroy
    # get the task with the given id from the database
    # @task = Task.find(params[:id])
    # destroy the restaurant
    @task.destroy
    # redirect to the index page
    redirect_to tasks_path
  end


  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

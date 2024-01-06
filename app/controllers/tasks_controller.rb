# frozen_string_literal: true

# Tasks Controller
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task)
  end

  private

  # Security Params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

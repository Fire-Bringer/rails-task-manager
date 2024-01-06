# frozen_string_literal: true

# Tasks Controller
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
end

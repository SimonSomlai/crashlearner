class TasksController < ApplicationController
    before_action :find_task, except: [:index, :new, :create]
    # before_filter :authenticate_user!, except: [:index, :show]

    def index
      @tasks = Task.all.order('created_at DESC')
    end

    def new
      @task = Task.new
    end

    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to task_path(@task), notice: 'Post succesfull!'
      else
        render 'new'
      end
    end

    def show; end

    def edit; end

    def update
      if @task.update(task_params)
        redirect_to @task
      else
        render 'edit', notice: 'Something went wrong :/'
      end
    end

    def destroy
      if @task.destroy
        redirect_to tasks_path
      else
        render "show", notice: 'Something went wrong :/'
      end
    end

    private

    def task_params
      params.require(:task).permit(:title, :description)
    end

    def find_task
      @task = Task.find(params[:id])
    end
  end

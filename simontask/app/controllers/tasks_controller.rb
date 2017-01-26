class TasksController < ApplicationController
    include TasksHelper
    before_action :find_task, except: [:index, :new, :create, :welcome_page]
    before_filter :authenticate_user!, except: [:welcome_page]

    def index
      @tasks = current_user.tasks.all.order('status ASC')
    end

    def new
      @task = current_user.tasks.build
    end

    def create
      @task = current_user.tasks.build(task_params)
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

    def change_status
      @task.update_attribute(:status, !@task.status)
      redirect_to tasks_path
    end

    def welcome_page

    end

    private

    def task_params
      params.require(:task).permit(:title, :description, :status)
    end

    def find_task
      @task = Task.find(params[:id])
    end
  end

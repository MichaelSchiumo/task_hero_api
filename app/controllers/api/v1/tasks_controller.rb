class Api::V1::TasksController < ApplicationController
    before_action :set_task, only: [:update, :destroy]

    def index 
        @tasks = Task.allocate
        
        if @tasks 
            render json: {
                tasks: @tasks
            }
        else 
            render json: {
                status: 500, 
                errors: ['No tasks found.']
            }
        end
    end

    def create
        @task = Task.new(task_params)
        if @memorial.save
            render json: {
                status: created,
                task: @task
            }
        else
            render json: {
                status: 500,
                errors: @task.errors.full_messages
            }
        end
    end

    def show
        @task = Task.find_by(id: params[:id])
    end

private 

def task_params 
    params.require(:task).permit(:name, :deadline, :user_id)
end

def set_task 
    @task = Task.find_by(id: params[:id])
end

end
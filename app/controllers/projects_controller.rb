class ProjectsController < ApplicationController
    def index
        @projects = TodoList.all

        render json: @projects, each_serializer: TodoListSerializer
    end

    def projects_labels
        @projects = TodoList.all

        render json: @projects, each_serializer: TodoListProjectsSerializer
    end

    def create_todo
        @todo = Todo.new(todo_list_id: params[:todo_list_id], text: params[:text], isCompleted: params[:isCompleted])

        if @todo.save
            render json: @todo, each_serializer: TodoSerializer
        else
            render json: { error: @todo.errors.messages }, status: 422
        end
    end

    def update_todo
        @todo = Todo.where(todo_list_id: params[:projectId]).find_by(id: params[:todoId])

        if @todo.update(todo_update_params)
            render json: @todo, each_serializer: TodoSerializer
        else
            flash.now[:error] = "To-do item update failed"
            render json: { error: @todo.errors.messages }, status: 422
        end

    end

    private
    def todo_update_params
        params.require(:todo).permit(:text, :isCompleted)
    end

end

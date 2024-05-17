class TodolistsController < ApplicationController
    def index
        todolists = Todolist.all
        render json: todolists
    end
    def create
        todolist = Todolist.new(todolist_params)
        if todolist.save
            render json: todolist
        else
            render json: {error: 'Unable to add todo item'}, status: 400
        end
    end

    private
    def todolist_params
      params.permit(:id,:name,:user_id)
    end
end

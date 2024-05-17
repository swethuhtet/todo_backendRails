class TodoitemsController < ApplicationController
    def index
        todoitems = Todoitem.where(todolist_id:params[:todolist_id])
        render json:todoitems
    end
    def create
        todoitem = Todoitem.new(todoitem_params)
        if todoitem.save
            render json: todoitem
        else
            render json: {error: 'Unable to add todo item'}, status: 400
        end
    end
    def update
        todoitem = Todoitem.find(params[:id])
        if todoitem
            todoitem.update(todoitem_params)
            render json: todoitem, status: 200
        else
            render json: {error: 'Unable to update todo item'}, status: 400
      end
    end
    def destroy 
        todoitem = Todoitem.find(params[:id])
        if todoitem
            todoitem.destroy
            render json: todoitem, status: 200
        else
            render json: {error: 'Unable to delete todo item'}, status: 400
      end
    end
    private 
    def todoitem_params
        params.permit(:id,:label,:done,:todolist_id)
    end
end

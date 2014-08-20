class TodosController < ApplicationController
  def index
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = Todo.new(todo_params)
    todo.save
    redirect_to({ action: "show", id: todo.id })
  end

  def update
  end

  def destroy
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end

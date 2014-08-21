class TodosController < ApplicationController
  def index
    # TODO Write this method
    @todos = Todo.unfinished
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
    redirect_to todos_path
  end

  def edit
    @todo = Todo.find(params[:id])
    render "new"
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo = Todo.find(params[:id]).destroy
    redirect_to todos_path, flash: { notice: "Successfully deleted: #{@todo.name}" }
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :status)
  end
end

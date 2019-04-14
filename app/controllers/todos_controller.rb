class TodosController < ApplicationController
  def index
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todos_params)
    # if @todo.save
      redirect_to todos_path
  #   else
  #     render :new
  #   end
  end

  private

  def todos_params
    params.require(:todo).permit(:title)
  end
end

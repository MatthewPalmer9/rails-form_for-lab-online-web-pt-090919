class SchoolClassesController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    @student.find(params[:id])
    @student.update(class_params(:title, ))
  end

  private

  def class_params(*args)
    params.require(:student_class).permit(*args)
  end
end

class SchoolClassesController < ApplicationController

  def index
  end

  def new
  end

  def create
    @student_class.find(params[:id])
  end

  def show
  end

  def edit
    @student_class.find(params[:id])
  end

  def update
    @student_class.find(params[:id])
    @student_class.update(class_params(:title, :room_number))
    redirect_to student_class_path(@student_class) 
  end

  private

  def class_params(*args)
    params.require(:student_class).permit(*args)
  end
end

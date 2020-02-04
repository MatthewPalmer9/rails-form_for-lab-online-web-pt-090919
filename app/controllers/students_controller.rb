class StudentsController < ApplicationController

  def index
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update
  end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end

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
  end

  def edit
  end

  def update
  end
end

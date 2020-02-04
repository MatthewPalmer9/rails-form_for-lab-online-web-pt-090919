class SchoolClassesController < ApplicationController

  def index
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
  end

  def show
    class_id
  end

  def edit
    class_id
  end

  def update
    class_id
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:student_class).permit(*args)
  end

  def class_id
    @school_class = SchoolClass.find(params[:id])
  end
end

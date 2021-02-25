class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
    Student.create params.to_unsafe_hash[:student]
    redirect_to students_path
  end
end

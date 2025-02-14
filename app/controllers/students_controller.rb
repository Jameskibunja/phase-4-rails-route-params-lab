class StudentsController < ApplicationController

  def index
    students = Student.all
    if params[:name]
      students = students.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:name]}%", "%#{params[:name]}%")
    end
    render json: students
  end
  

  def show
    student = Student.find(params[:id])
    render json: student
  end

end

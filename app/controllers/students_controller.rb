class StudentsController < ActionController::API
  def index
    students = Student.all
    render json: students
  end 

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end 
end

class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active #doing the change through the browser, no button
    @student.save
    redirect_to student_path(@student)#redirects to the student's show page 
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

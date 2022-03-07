class HomeController < ApplicationController

	def create
  @student = Student.new(student_params)

  if @student.save
    redirect_to new_home_path
  end

end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:firstname, :lastname)
  end
end

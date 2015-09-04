class SubjectsController < ApplicationController
  load_and_authorize_resource

  def show
    @user = User.find params[:user_id]
    @user_subject = @subject.user_subjects.find_by user: @user
    @course = Course.find params[:course_id]
  end
end

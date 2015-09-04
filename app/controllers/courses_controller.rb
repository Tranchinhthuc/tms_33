class CoursesController < ApplicationController
  load_and_authorize_resource

  def show
    @user = User.find params[:user_id]
  end
end

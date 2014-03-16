class UserController < ApplicationController
  def profile
    @user = User.find_by!(nickname: params[:nickname])
  end
end

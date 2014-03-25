class UserController < ApplicationController
	layout false
  def profile
		@user = User.find_by!(nickname: params[:nickname])
  end
end

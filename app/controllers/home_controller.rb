class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to user_feed_path, alert: "Por favor, Faça login ou Cadastre-se"
  	end
  end
end

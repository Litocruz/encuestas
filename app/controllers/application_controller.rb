class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :authenticate_user!
=begin
	def current_user
	  @current_user ||= User.find(session[:user_id])
	end
=end
	def can_administer?
	  current_user.try(:admin)
	end
end
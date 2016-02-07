class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	
	helper_method :current_user

	def current_user
		return nil if session[:user_id].nil? or User.where(id:session[:user_id]).empty?
		User.find(session[:user_id])
	end
end
class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?
	def home
		render 'user/login'
	end
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :name, :bank, :password)}
		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :name, :bank, :current_password)}
	end

end

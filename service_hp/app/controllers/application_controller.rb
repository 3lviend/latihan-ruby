class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_staff

  def current_staff
		current_staff = Staff.find(session[:staff_id]) if session[:staff_id].present?
  end

  private
	# def verify_authenticity_token
	# 	if current_staff.blank?
	# 		redirect_to login_path
	# 	end
	# end
end

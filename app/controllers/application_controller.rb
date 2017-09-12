class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method  :is_sbc? ,:current_sbc_user_data , :is_chairman?
  
  def is_sbc?
    Sbc.where(sbc_email: current_user.email).first
  end
  
  def is_chairman?
    Chapter.where(email: current_user.email).first
  end  
  
  def current_sbc_user_data
    
    @current_sbc_user_data = Sbc.find_by(sbc_email: current_user.email)
    
  end  
end

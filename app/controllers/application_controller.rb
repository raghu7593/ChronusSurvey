class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user
    @current_user ||= Member.find(session[:member_id]) if session[:member_id]
  end
  helper_method :current_user
end

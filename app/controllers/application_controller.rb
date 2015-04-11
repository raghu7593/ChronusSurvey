class ApplicationController < ActionController::Base
  protect_from_forgery
  skip_before_action :verify_authenticity_token, if: :js_request?

  protected
  def js_request?
    request.format.js?
  end

  private
  def current_user
    @current_user ||= Member.find_by_id(session[:member_id]) if session[:member_id]
  end
  helper_method :current_user
end

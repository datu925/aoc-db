module SessionsHelper
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    current_user != nil
  end

  def contact_visible?
    !current_user.account_type.nil? && current_user.account_type != "Actor"
  end
end

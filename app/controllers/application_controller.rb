class ApplicationController < ActionController::Base
  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    # false
    session[:current_email].present?
  end
end

# 1. if not sign_in -> ...
# signing_path -> typically in sessions new
# 2. new resource in route
# new_session GET  /session/new(.:format) sessions#new
# 3. always we set false to sign_in ==> needs to be changed

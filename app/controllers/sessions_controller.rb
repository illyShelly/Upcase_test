class SessionsController < ApplicationController
  # form to sign in
  def new
  end

  def create
    session[:current_email] = params[:session][:email]
    redirect_to root_path
  end
end

# after new action (test)
# No route matches [POST] "/session/new"
# changed sign_in method => using for create, taking info from params

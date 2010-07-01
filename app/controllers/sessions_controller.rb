class SessionsController < ApplicationController
  def new
      @title = "Sign in"
  end

  def create
      test = params[:session][:email]
      user = User.authenticate(params[:session][:email],
			       params[:session][:password])
      logger.info "AJ HERE(next): #{user}"
      if user.nil?
      	 flash.now[:error] = "Invalid email/password combination."
	 @title = "Sign in"
	 render 'new'
      else
	sign_in user
	redirect_back_or user
      end
  end

  def destroy
      sign_out
      redirect_to root_path
  end
end

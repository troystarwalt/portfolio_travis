class SessionsController < ApplicationController
  def new
  end

  def create
  	admin = Admin.find_by(email: params[:session][:email].downcase)
  	if admin && admin.authenticate(params[:session][:password])
      puts "logged in"
      log_in admin
  		redirect_to root_path
  	else
  		flash.now[:danger] = 'Inavlid email or password combination.'
      render "new"
  	end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end

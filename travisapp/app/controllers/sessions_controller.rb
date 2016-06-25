class SessionsController < ApplicationController
  def new
  end

  def create
  	lastadmin = Admin.last.email
  	admin = Admin.find_by(email: params[:session][:email].downcase)
  	if admin.email === lastadmin

  		redirect_to root_path
  	else
  		render "new"
  		puts "fuker"
  	end
  end

  def destroy
  end
end

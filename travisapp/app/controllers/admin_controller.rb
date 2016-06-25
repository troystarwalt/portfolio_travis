class AdminController < ApplicationController
  def show
  	@admin = Admin.last
  end
end

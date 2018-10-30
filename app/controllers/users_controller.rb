class UsersController < ApplicationController
  def new
  @user = User.new('username' => params[:username],
                  'email' => params[:email],
                  'bio' => params[:bio])
  end

  def create
  @user = User.create!(username: params[:username], email:params[:email], bio: params[:bio])	
  end
end

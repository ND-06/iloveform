class UsersController < ApplicationController
  def new
    @user = User.new('username' => params[:username],
      'email' => params[:email],
      'bio' => params[:bio])
  end

  def create
    if params['username']
      @user = User.create!(
        username: params[:username],
        email: params[:email],
        bio: params[:bio]
        )

    elsif params['user']['username']
      @user = User.create(
        username: params["user"]["username"],
        email: params["user"]["email"],
        bio: params["user"]["bio"]
        )
    end
  end
end
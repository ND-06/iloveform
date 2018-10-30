class ApplicationController < ActionController::Base
def new
  @User = User.new(username: params[:username], email: params[:email], bio: params[:bio])	
  end
end

class UsersController < ApplicationController
  
def new
end

def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to animals_path
  else
    redirect_to '/animals'
  end
end
  
private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
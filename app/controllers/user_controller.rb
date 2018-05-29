class UserController < ApplicationController


  def create 
    @user = User.create!(
      first_name: params[first_name], 
      last_name: params[last_name], 
      phone_number: params[phone_number]
    )
    render json: @user.to_json
  end
  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number)
  end
end

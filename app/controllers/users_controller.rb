class UsersController < ApplicationController
  def create
    User.create(protospace_params)
    binding.pry
    redirect_to '/'
  end



  private
   def protospace_params
     params.require(:user).permit(:eamail, :password, :nickname, :profile, :affiliction, :role)
   end






end

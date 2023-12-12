class UsersController < ApplicationController
  def create
    User.create(protospace_params)
    binding.pry
    redirect_to '/'
  end


  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end  

  private
   def protospace_params
     params.require(:user).permit(:eamail, :password, :nickname, :profile, :affiliation, :role)
   end






end

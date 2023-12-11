class PrototypesController < ApplicationController
  def index

  end  

  def new
    @prototype = Prototype.new
  end


  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to '/'
    else 
      render :index,status: :unprocessable_entity
    end    
  end   

 private

  def prototype_params
    params.require(:prototype).permit(:type_name, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end




end

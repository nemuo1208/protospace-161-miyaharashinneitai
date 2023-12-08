class PrototypesController < ApplicationController
  def index

  end  

  def new
    @prototype = Prototype.new
  end


  def create
    @prototype = Prototype.create(prototype_params)
    if @prototype.save
      redirect_to '/'
    else 
      render :index,status: :unprocessable_entity
    end    
  end   

 private

  def prototype_params
    params.require(:prototype).permit(:type_name, :catch_copy, :concept, :image)
  end




end

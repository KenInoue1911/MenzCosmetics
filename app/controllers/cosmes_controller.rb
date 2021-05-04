class CosmesController < ApplicationController
  def top
  end
  
 def new
   @cosme = Cosme.new
 end

 def create
   @cosme = Cosme.new(cosme_params)
   @cosme.user_id = current_user.id
   @cosme.save
   redirect_to cosmes_path
 end

 def index
   @cosmes = Cosme.all
 end

 def show
   @cosme = Cosme.find(params[:id])
 end

 def destroy
   @cosme = Cosme.find(params[:id])
   @cosme.destroy
   redirect_to cosmes_path
 end
 
 private
 def cosme_params
   params.require(:cosme).permit(:name, :caption, :image)
 end
end

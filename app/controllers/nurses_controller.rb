class NursesController < ApplicationController
  def index
    @nurses = Nurse.all
  end
  
  def new
    @nurse = Nurse.new
  end
  
  def show
		@nurse = Nurse.find(params[:id])
  end
  
  def create
    @nurse = Nurse.new(nurse_params)

	  if @nurse.save
	    redirect_to @nurse
	  else
		  render 'new'
	  end
  end
  
	private

	def nurse_params
		params.require(:nurse).permit(:name, :user_id)
	end
end

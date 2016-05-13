class MedicsController < ApplicationController
  def index
    @medics = Medic.all
  end
  def new
    @medic = Medic.new
  end
  def show
		@medic = Medic.find(params[:id])
  end
  def create
    @medic = Medic.new(medic_params)

	  if @medic.save
	    redirect_to @medic
	  else
		  render 'new'
	  end
  end

	private

	def medic_params
		params.require(:medic).permit(:name, :user_id)
	end
end

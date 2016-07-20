class MedicsController < ApplicationController
  def index
    @medics = Medic.all
  end

  def new
    @medic = Medic.new
    @user = @medic.build_user
  end

  def show
		@medic = Medic.find(params[:id])
  end

  def create
    @medic = Medic.new(medic_params)
    @user = @medic.build_user(medic_params[:user_attributes])
    @user.profileable = @medic

    if @user.save
        @medic.save

        redirect_to @medic
    else
        render 'new'
    end
end

  def edit
		@medic = Medic.find(params[:id])
  end

	def update
		@medic = Medic.find(params[:id])

		if @medic.update(params[:medic].permit(:crm, :workHours, :workDays, :expertise))
			redirect_to @medic
		else
			render 'edit'
		end
	end

  def destroy
		@medic = Medic.find(params[:id])
		@medic.destroy

		redirect_to medics_path
  end

	private

	def medic_params
		params.require(:medic).permit(:crm, :workHours, :workDays, :expertise, user_attributes: [:name,:birthday,:lot,:block,:number,:street,:neighborhood,:complement,:city,:state,:country,:cep,:phoneOne,:phoneTwo,:phoneThree,:cpf,:rg,:rgExpeditor,:email,:password,:password_confirmation])
	end
end

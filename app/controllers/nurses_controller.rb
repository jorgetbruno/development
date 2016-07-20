class NursesController < ApplicationController
  def index
    @nurses = Nurse.all
  end

  def new
    @nurse = Nurse.new
    @user = @nurse.build_user
  end

  def show
		@nurse = Nurse.find(params[:id])
  end

  def create
    @nurse = Nurse.new(nurse_params)
    @user = @nurse.build_user(nurse_params[:user_attributes])
    @user.profileable = @nurse

    if @user.save
        @nurse.save

        redirect_to @nurse
    else
        render 'new'
    end
end

  def edit
		@nurse = Nurse.find(params[:id])
  end

	def update
		@nurse = Nurse.find(params[:id])

		if @nurse.update(params[:nurse].permit(:user_id, :coren))
			redirect_to @nurse
		else
			render 'edit'
		end
	end

  def destroy
		@nurse = Nurse.find(params[:id])
		@nurse.destroy

		redirect_to nurses_path
  end

	private

	def nurse_params
		params.require(:nurse).permit(:user_id, :coren, user_attributes: [:name,:birthday,:lot,:block,:number,:street,:neighborhood,:complement,:city,:state,:country,:cep,:phoneOne,:phoneTwo,:phoneThree,:cpf,:rg,:rgExpeditor,:email,:password,:password_confirmation])
	end
end

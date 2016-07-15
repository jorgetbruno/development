class PatientsController < ApplicationController
	def index
		@patients = Patient.all.page(params[:page]).per(5)
	end

	def new
		@patient = Patient.new
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def create
		@patient = Patient.new(patient_params)

		if @patient.save
			redirect_to @patient
		else
			render 'new'
		end
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def update
		@patient = Patient.find(params[:id])

		if @patient.update(params[:patient].permit(:user_id,:motherName,:fatherName,:occupation,:observation))
			redirect_to @patient
		else
			render 'edit'
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy

		redirect_to patients_path
	end

	private

	def patient_params
		params.require(:patient).permit(:user_id,:motherName,:fatherName,:occupation,:observation)
	end
end

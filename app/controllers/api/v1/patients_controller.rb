module Api
  module V1
    class PatientsController < ApiController
      def create
        patient = Patient.new(sign_up_params)
        if patient.save
          ApiKey.create!(patient: patient)
          render json: patient, serializer: Api:V1:PatientsSerializer, status: created
        else
          render json: patient.errors, status: :unprocessable_entity
        end
      end

      private

      def sign_up_params
        params.require(:patient).permit(
          :first_name,
          :last_name,
          :email,
          :password,
          :date_of_birth
        )
    end
  end
end
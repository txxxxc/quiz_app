class Api::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController

	def sign_up_params
		params.permit(:name, :nickname, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.permit(:name, :nickname, :email)
	end
end

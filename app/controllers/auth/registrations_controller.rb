class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController

    private

    def sign_up_params
      params.require(:registration).permit(:name, :email, :password, :tokens, :password_confirmation)
    end
end

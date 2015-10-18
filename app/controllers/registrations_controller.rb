class RegistrationsController < Users::RegistrationsController

private

def sign_up_params
  params.require(:user).permit(:name,:email, :rol, :password, :password_confirmation)
end

def account_update_params
  params.require(:user).permit(:name,:email, :rol, :password, :password_confirmation, :current_password, :dalys)
end

end

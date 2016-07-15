class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :name, :birthday, :lot, :block, :number, :street ,:neighborhood, :complement, :city, :state, :country, :cep, :phoneOne, :phoneTwo, :phoneThree, :cpf, :rg, :rgExpeditor])
    devise_parameter_sanitizer.permit(:user, keys: [:email, :password, :name, :birthday, :lot, :block, :number, :street ,:neighborhood, :complement, :city, :state, :country, :cep, :phoneOne, :phoneTwo, :phoneThree, :cpf, :rg, :rgExpeditor])
  end
end

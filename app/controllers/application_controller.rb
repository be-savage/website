class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:username, :email, :password, :password_confirmation) }
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, notify: 'Accès interdit'
  end
end

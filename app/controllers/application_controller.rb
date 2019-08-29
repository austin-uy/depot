class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :set_i18n_locale_from_params
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected 
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to new_user_session_url, notice: "Please log in"
    end
  end

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.map(&:to_s).include?(params[:locale])
        I18n.locale = params[:locale]
      else
        flash.now[:notice] =
        "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

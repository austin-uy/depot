class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :set_i18n_locale_from_params
  before_action :authenticate_user!

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

end

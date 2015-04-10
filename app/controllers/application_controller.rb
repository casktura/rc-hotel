class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize
  #before_action :set_locale

  private
    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to authen_login_path, alert: "You must be logged in."
      end
    end

    def authorized?
      if User.find_by(id: session[:user_id])
        return true
      else
        return false
      end
    end

    def only_root
      unless session[:root]
        redirect_to index_path, alert: "You have no power here!!!"
      end
    end

    def only_admin
      unless session[:admin]
        redirect_to index_path, alert: "You have no power here!!!"
      end
    end

    #def set_locale
    #  I18n.locale = params[:locale] || I18n.default_locale
    #end

    #def default_url_options
    #  {locale: I18n.locale}
    #end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize

  private
    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to authen_login_path, alert: "ท่านยังไม่ได้ลงชื่อเข้าสู่ระบบ"
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
        redirect_to index_path, alert: "ท่านไม่มีสิทธิ์ใช้งานในส่วนนี้"
      end
    end

    def only_admin
      unless session[:admin]
        redirect_to index_path, alert: "ท่านไม่มีสิทธิ์ใช้งานในส่วนนี้"
      end
    end
end

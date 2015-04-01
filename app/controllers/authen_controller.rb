class AuthenController < ApplicationController
  layout "plain"
  skip_before_action :authorize, only: [:new, :create]
  before_action :redirect_if_authorized, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: params[:username].downcase)
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      if user.privilege == "Root"
        session[:root] = true
        session[:admin] = true
      elsif user.privilege == "Admin"
        session[:root] = nil
        session[:admin] = true
      elsif user.privilege == "User"
        session[:root] = nil
        session[:admin] = nil
      end
      redirect_to index_path, notice: "ยินดีต้อนรับ #{user.name}"
    else
      redirect_to authen_login_path, alert: "Username หรือ Password ไม่ถูกต้อง"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    session[:root] = nil
    session[:admin] = nil
    redirect_to authen_login_path, notice: "ท่านออกจากระบบเรียบร้อยแล้ว"
  end

  private
    def redirect_if_authorized
      redirect_to index_path if authorized?
    end
end

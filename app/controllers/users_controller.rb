class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :only_admin
  before_action :only_root, only: [:create, :update, :destroy]
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    respond_to do |format|
      if @user == User.find_by(id: session[:user_id])
        format.html { redirect_to users_url, alert: "ท่านไม่สามารถลบชื่อผู้ใช้นี้ได้" }
      elsif @user.destroy
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation, :privilege)
    end
  
    def only_root
      unless session[:root]
        redirect_to users_path, alert: "ท่านไม่มีสิทธิ์ใช้งานในส่วนนี้"
      end
    end
  
    def only_admin
      unless session[:admin]
        redirect_to index_path, alert: "ท่านไม่มีสิทธิ์ใช้งานในส่วนนี้"
      end
    end
end

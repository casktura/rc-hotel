class ReservesController < ApplicationController
  before_action :set_reserf, only: [:show, :edit, :update, :destroy]

  # GET /reserves
  # GET /reserves.json
  def index
    @reserves = Reserf.all
  end

  # GET /reserves/1
  # GET /reserves/1.json
  def show
  end

  # GET /reserves/new
  def new
    @reserf = Reserf.new
  end

  # GET /reserves/1/edit
  def edit
  end

  # POST /reserves
  # POST /reserves.json
  def create
    @reserf = Reserf.new(reserf_params)
    @reserf.user_id = session[:user_id]

    respond_to do |format|
      if @reserf.save
        format.html { redirect_to @reserf, notice: 'Reserve was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /reserves/1
  # PATCH/PUT /reserves/1.json
  def update
    respond_to do |format|
      if @reserf.update(reserf_params)
        format.html { redirect_to @reserf, notice: 'Reserve was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /reserves/1
  # DELETE /reserves/1.json
  def destroy
    @reserf.destroy
    respond_to do |format|
      format.html { redirect_to reserves_path, notice: 'Reserve was successfully deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserf
      @reserf = Reserf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserf_params
      params.require(:reserf).permit(:customer_id, :guest_amount, :night_amount, :room_amount, :reserve_status_id, :booking_date, :check_in_date, :check_in_time, :check_out_date, :check_out_time)
    end
end

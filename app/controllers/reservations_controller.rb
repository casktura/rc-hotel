class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:edit, :update, :destroy]

  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new(reserf_id: params[:reserf_id])
    #@reservation.reserf_id = params[:reserf_id]
    @reserf = Reserf.find(params[:reserf_id])
  end

  # GET /reservations/1/edit
  def edit
    @reserf = @reservation.reserf
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation.reserf, notice: 'Reservation was successfully created.' }
      else
        @reserf = @reservation.reserf
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation.reserf, notice: 'Reservation was successfully updated.' }
      else
        @reserf = @reservation.reserf
        format.html { render :edit }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reserf = @reservation.reserf
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to @reserf, notice: 'Reservation was successfully deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:reserf_id, :room_id, :optional_bed, :optional_bed_cost, :total_cost)
    end
end

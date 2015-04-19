class ReserveStatusesController < ApplicationController
  before_action :set_reserve_status, only: [:show, :edit, :update, :destroy]
  before_action :only_admin

  # GET /reserve_statuses
  # GET /reserve_statuses.json
  def index
    @reserve_statuses = ReserveStatus.all
  end

  # GET /reserve_statuses/1
  # GET /reserve_statuses/1.json
  def show
  end

  # GET /reserve_statuses/new
  def new
    @reserve_status = ReserveStatus.new
  end

  # GET /reserve_statuses/1/edit
  def edit
  end

  # POST /reserve_statuses
  # POST /reserve_statuses.json
  def create
    @reserve_status = ReserveStatus.new(reserve_status_params)

    respond_to do |format|
      if @reserve_status.save
        format.html { redirect_to reserve_statuses_path, notice: 'Reserve status was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /reserve_statuses/1
  # PATCH/PUT /reserve_statuses/1.json
  def update
    respond_to do |format|
      if @reserve_status.update(reserve_status_params)
        format.html { redirect_to reserve_statuses_path, notice: 'Reserve status was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /reserve_statuses/1
  # DELETE /reserve_statuses/1.json
  def destroy
    respond_to do |format|
      if @reserve_status.destroy
        format.html { redirect_to reserve_statuses_path, notice: 'Reserve status was successfully deleted.' }
      else
        format.html { redirect_to reserve_statuses_path, alert: @reserve_status.errors[:base][0] + "." }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserve_status
      @reserve_status = ReserveStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserve_status_params
      params.require(:reserve_status).permit(:name)
    end
end

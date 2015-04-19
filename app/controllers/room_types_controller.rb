class RoomTypesController < ApplicationController
  before_action :set_room_type, only: [:edit, :update, :destroy]
  before_action :only_admin

  # GET /room_types
  # GET /room_types.json
  def index
    @room_types = RoomType.all
  end

  # GET /room_types/1
  # GET /room_types/1.json
  def show
  end

  # GET /room_types/new
  def new
    @room_type = RoomType.new
  end

  # GET /room_types/1/edit
  def edit
  end

  # POST /room_types
  # POST /room_types.json
  def create
    @room_type = RoomType.new(room_type_params)

    respond_to do |format|
      if @room_type.save
        format.html { redirect_to room_types_path, notice: 'Room type was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /room_types/1
  # PATCH/PUT /room_types/1.json
  def update
    respond_to do |format|
      if @room_type.update(room_type_params)
        format.html { redirect_to room_types_path, notice: 'Room type was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /room_types/1
  # DELETE /room_types/1.json
  def destroy
    respond_to do |format|
      if @room_type.destroy
        format.html { redirect_to room_types_path, notice: 'Room type was successfully deleted.' }
      else
        format.html { redirect_to room_types_path, alert: @room_type.errors[:base][0] + "." }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_type
      @room_type = RoomType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_type_params
      params.require(:room_type).permit(:name, :cost)
    end
end

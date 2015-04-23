class MainController < ApplicationController
  def index
    @rooms = Room.all.order(:number)
  end
end

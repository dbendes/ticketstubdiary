class ConcertsController < ApplicationController
  
  before_action :set_concert, only: [:show, :edit, :update, :destroy]

  respond_to :html
  
  

  def index
    @concerts = current_user.concerts
    respond_with(@concerts)
  end

  def show
    respond_with(@concert)
  end

  def new
    @concert = Concert.new
    respond_with(@concert)
  end

  def edit
  end

  def create
    @concert = Concert.new(concert_params)
    @concert.user_ids = current_user.id
    @concert.save
    respond_with(@concert)
  end

  def update
    @concert.update(concert_params)
    respond_with(@concert)
  end

  def destroy
    @concert.destroy
    respond_with(@concert)
  end

  private
    def set_concert
      @concert = Concert.find(params[:id])
    end

    def concert_params
      params.require(:concert).permit(:date, :venue_id, :band_ids => [], :user_ids => [])
    end
end

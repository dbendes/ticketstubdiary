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
    print("creating)")
    concertDateTime = DateTime.new concert_params["date(1i)"].to_i, concert_params["date(2i)"].to_i, concert_params["date(3i)"].to_i, concert_params["date(4i)"].to_i, concert_params["date(5i)"].to_i
    print("gotdatetime")
    if Concert.where(venue_id: concert_params["venue_tokens"], date: concertDateTime).exists?
      print("that concert already exists")
      @concert = Concert.where(venue_id: concert_params["venue_tokens"], date: concertDateTime).first
      if current_user.concerts.where(id: @concert.id).present?
      else
        @concert.users << current_user
      end
    else
      print("no concert exists")
      print(concert_params)
      @concert = Concert.new(concert_params)
      @concert.users << current_user
    end

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
      params.require(:concert).permit(:date, :venue_id, :venue_tokens, :band_tokens, :band_ids => [], :user_ids => [])
    end
end

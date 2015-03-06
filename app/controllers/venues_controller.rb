class VenuesController < ApplicationController
  require 'open-uri'
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @venues = Venue.all.order(:name)
    respond_to do |format|
      format.html
      format.json {render json: @venues.where("name ILIKE ?", "%#{params[:q]}%") }
    end
  end

  def get_venues_ny
    parsed = JSON.load(open("http://api.seatgeek.com/2/venues?city=New+York&per_page=1000").read)
    venues = parsed['venues']
    venues.each do |venue|
      @venue = Venue.create(:name => venue["name"], :street => venue["address"], :city => venue["city"], :state => venue["state"], :zip => venue["zip"], :sgID => venue["id"])
    end
  end
  def get_venues_boston
    parsed = JSON.load(open("http://api.seatgeek.com/2/venues?city=Boston&per_page=200").read)
    venues = parsed['venues']
    venues.each do |venue|
      @venue = Venue.create(:name => venue["name"], :street => venue["address"], :city => venue["city"], :state => venue["state"], :zip => venue["zip"], :sgID => venue["id"])
    end
  end

  helper_method :get_venues_ny
  helper_method :get_venues_boston


  def show
    respond_with(@venue)
  end

  def new
    @venue = Venue.new
    respond_with(@venue)
  end

  def edit
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save
    respond_with(@venue)
  end

  def update
    @venue.update(venue_params)
    respond_with(@venue)
  end

  def destroy
    @venue.destroy
    respond_with(@venue)
  end

  private
    def set_venue
      @venue = Venue.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:name, :website, :street, :city, :state, :zip, :sgID)
    end
end

class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]
  require 'open-uri'
  respond_to :html

  def index
    @bands = Band.all.order(:name)
    respond_to do |format|
      format.html
      format.json {render json: @bands.where("name ILIKE ?", "%#{params[:q]}%") }
    end
  end

  def get_bands
    parsed = JSON.load(open("http://api.seatgeek.com/2/performers?type=band&per_page=1500&page=1&sort=id.asc").read)
    bands = parsed['performers']
    bands.each do |band|
      @band = Band.create(:name => band["name"], :sgid => band["id"])
    end
  end

  helper_method :get_bands

  def show
    respond_with(@band)
  end

  def new
    @band = Band.new
    respond_with(@band)
  end

  def edit
  end

  def create
    @band = Band.new(band_params)
    @band.save
    respond_with(@band)
  end

  def update
    @band.update(band_params)
    respond_with(@band)
  end

  def destroy
    @band.destroy
    respond_with(@band)
  end

  private
    def set_band
      @band = Band.find(params[:id])
    end

    def band_params
      params.require(:band).permit(:name, :website, :sgid)
    end
end

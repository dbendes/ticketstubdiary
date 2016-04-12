class BuildsController < ApplicationController
  before_action :set_build, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @builds = Build.all
    respond_with(@builds)
  end

  def show
    respond_with(@build)
  end

  def new
    @build = Build.new
    respond_with(@build)
  end

  def edit
  end

  def create
    @build = Build.new(build_params)
    @build.save
    respond_with(@build)
  end

  def update
    @build.update(build_params)
    respond_with(@build)
  end

  def destroy
    @build.destroy
    respond_with(@build)
  end

  private
    def set_build
      @build = Build.find(params[:id])
    end

    def build_params
      params.require(:build).permit(:bom_date, :prod_start_date, :corrugate_due_date, :production_end_date, :quantity)
    end
end

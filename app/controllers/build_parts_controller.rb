class BuildPartsController < ApplicationController
  before_action :set_build_part, only: [:show, :edit, :update, :destroy]

  # GET /build_parts
  # GET /build_parts.json
  def index
    @build_parts = BuildPart.all
  end

  # GET /build_parts/1
  # GET /build_parts/1.json
  def show
  end

  # GET /build_parts/new
  def new
    @build_part = BuildPart.new
  end

  # GET /build_parts/1/edit
  def edit
  end

  # POST /build_parts
  # POST /build_parts.json
  def create
    @build_part = BuildPart.new(build_part_params)

    respond_to do |format|
      if @build_part.save
        format.html { redirect_to @build_part, notice: 'Build part was successfully created.' }
        format.json { render :show, status: :created, location: @build_part }
      else
        format.html { render :new }
        format.json { render json: @build_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /build_parts/1
  # PATCH/PUT /build_parts/1.json
  def update
    respond_to do |format|
      if @build_part.update(build_part_params)
        format.html { redirect_to @build_part, notice: 'Build part was successfully updated.' }
        format.json { render :show, status: :ok, location: @build_part }
      else
        format.html { render :edit }
        format.json { render json: @build_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /build_parts/1
  # DELETE /build_parts/1.json
  def destroy
    @build_part.destroy
    respond_to do |format|
      format.html { redirect_to build_parts_url, notice: 'Build part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build_part
      @build_part = BuildPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def build_part_params
      params.require(:build_part).permit(:build_id, :part_id, :units_per)
    end
end

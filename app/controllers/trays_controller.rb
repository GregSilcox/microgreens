class TraysController < ApplicationController
  before_action :set_tray, only: %i[ show edit update destroy ]

  # GET /trays or /trays.json
  def index
    @trays = Tray.all
  end

  # GET /trays/1 or /trays/1.json
  def show
  end

  # GET /trays/new
  def new
    @tray = Tray.new
  end

  # GET /trays/1/edit
  def edit
  end

  # POST /trays or /trays.json
  def create
    @tray = Tray.new(tray_params)

    respond_to do |format|
      if @tray.save
        format.html { redirect_to tray_url(@tray), notice: "Tray was successfully created." }
        format.json { render :show, status: :created, location: @tray }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tray.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trays/1 or /trays/1.json
  def update
    respond_to do |format|
      if @tray.update(tray_params)
        format.html { redirect_to tray_url(@tray), notice: "Tray was successfully updated." }
        format.json { render :show, status: :ok, location: @tray }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tray.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trays/1 or /trays/1.json
  def destroy
    @tray.destroy!

    respond_to do |format|
      format.html { redirect_to trays_url, notice: "Tray was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tray
      @tray = Tray.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tray_params
      params.require(:tray).permit(:green_id, :crop_id, :weight, :tray_number, :sown_at, :harvested_at)
    end
end

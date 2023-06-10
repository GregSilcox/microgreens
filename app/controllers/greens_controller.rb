class GreensController < ApplicationController
  before_action :set_green, only: %i[ show edit update destroy ]

  # GET /greens or /greens.json
  def index
    @greens = Green.all
  end

  # GET /greens/1 or /greens/1.json
  def show
  end

  # GET /greens/new
  def new
    @green = Green.new
  end

  # GET /greens/1/edit
  def edit
  end

  # POST /greens or /greens.json
  def create
    @green = Green.new(green_params)

    respond_to do |format|
      if @green.save
        format.html { redirect_to green_url(@green), notice: "Green was successfully created." }
        format.json { render :show, status: :created, location: @green }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @green.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /greens/1 or /greens/1.json
  def update
    respond_to do |format|
      if @green.update(green_params)
        format.html { redirect_to green_url(@green), notice: "Green was successfully updated." }
        format.json { render :show, status: :ok, location: @green }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @green.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greens/1 or /greens/1.json
  def destroy
    @green.destroy

    respond_to do |format|
      format.html { redirect_to greens_url, notice: "Green was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_green
      @green = Green.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def green_params
      params.require(:green).permit(:name, :description, :nutrition, :apperance, :flavor)
    end
end
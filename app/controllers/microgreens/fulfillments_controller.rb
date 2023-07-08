module Microgreens
  class FulfillmentsController < ApplicationController
    before_action :set_fulfillment, only: %i[ show edit update destroy ]

    # GET /fulfillments or /fulfillments.json
    def index
      @fulfillments = Fulfillment.all
    end

    # GET /fulfillments/1 or /fulfillments/1.json
    def show
    end

    # GET /fulfillments/new
    def new
      @fulfillment = Fulfillment.new
    end

    # GET /fulfillments/1/edit
    def edit
    end

    # POST /fulfillments or /fulfillments.json
    def create
      @fulfillment = Fulfillment.new(fulfillment_params)

      respond_to do |format|
        if @fulfillment.save
          format.html { redirect_to fulfillment_url(@fulfillment), notice: "Fulfillment was successfully created." }
          format.json { render :show, status: :created, location: @fulfillment }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @fulfillment.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /fulfillments/1 or /fulfillments/1.json
    def update
      respond_to do |format|
        if @fulfillment.update(fulfillment_params)
          format.html { redirect_to fulfillment_url(@fulfillment), notice: "Fulfillment was successfully updated." }
          format.json { render :show, status: :ok, location: @fulfillment }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @fulfillment.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /fulfillments/1 or /fulfillments/1.json
    def destroy
      @fulfillment.destroy

      respond_to do |format|
        format.html { redirect_to fulfillments_url, notice: "Fulfillment was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_fulfillment
      @fulfillment = Fulfillment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fulfillment_params
      params.require(:fulfillment).permit(:fulfilled_at, :kind, :line_item_id)
    end
  end
end
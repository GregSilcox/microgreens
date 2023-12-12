module Microgreens
  class TraysController < ApplicationController
    include ModelsController

    private

    def model_params
      params.require(:tray).
        permit(:green_id, :crop_id, :weight, :tray_number, :sown_at, :harvested_at)
    end
  end
end

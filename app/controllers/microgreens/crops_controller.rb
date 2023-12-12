module Microgreens
  class CropsController < ApplicationController
    include ModelsController

    private

    def model_params
      params.require(:crop).
        permit(:notes, :sown_at)
    end
  end
end

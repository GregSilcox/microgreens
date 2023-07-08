module Microgreens
  class DonationsController < ApplicationController
    include ModelsController

    private

    def model_params
      params.require(:donation).
        permit(:amount, :donated_at, :kind)
    end
  end
end
module Microgreens
  class OrdersController < ApplicationController
    include ModelsController

    private

    def model_params
      params.require(:order).
        permit(:user_id, :state, :status)
    end
  end
end
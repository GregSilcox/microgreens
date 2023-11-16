module Microgreens
  class ProductsController < ApplicationController
    include ModelsController

    private

    def model_params
      params.require(:product).
        permit(:title, :description, :price)
    end
  end
end
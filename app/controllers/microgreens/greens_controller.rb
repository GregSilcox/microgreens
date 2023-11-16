module Microgreens
  class GreensController < ApplicationController
    include ModelsController

    private
    
      def model_params
        params.require(:green).
          permit(:name, :description, :nutrition, :apperance, :flavor)
      end
  end
end
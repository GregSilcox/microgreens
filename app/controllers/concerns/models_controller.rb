module ModelsController
  extend ActiveSupport::Concern

  included do
    before_action :find_model, only: %i[ show edit update destroy ]
    
    # actions
    def index
      @models = model_constant.all
      authorize [:microgreens, model_constant]
    end

    def show
    end

    def new
      @model = model_constant.new
      authorize [:microgreens, @model]
    end

    def create
      @model = model_constant.new(model_params)
      authorize [:microgreens, @model]

      respond_to do |format|
        if @model.save
          format.html { redirect_to url_for([:microgreens, @model]), 
            notice: "#{ model_name } was successfully created." }
          format.json { render :show, status: :created, location: @model }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @model.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit
    end

    def update
      respond_to do |format|
        if @model.update(model_params)
          format.html { redirect_to url_for([:microgreens, @model]), 
            notice: "#{ model_name } was successfully updated." }
          format.json { render :show, status: :ok, location: @model }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @model.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def destroy
      @model.destroy

      respond_to do |format|
        format.html { redirect_to url_for([:microgreens, @model]), 
          notice: "#{ model_name } was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    # shared methods
    def model_name
      @model_name = controller_name.singularize.camelcase
    end

    def model_constant
      @model_constant = model_name.constantize
    end

    def model_symbol
      @model_symbol = controller_name.singularize.to_sym
    end   

    def find_model
      @model = model_constant.find params[:id]
      authorize [:microgreens, @model]
    end
  end
end
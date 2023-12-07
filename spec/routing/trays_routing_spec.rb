require "rails_helper"

RSpec.describe TraysController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/trays").to route_to("trays#index")
    end

    it "routes to #new" do
      expect(get: "/trays/new").to route_to("trays#new")
    end

    it "routes to #show" do
      expect(get: "/trays/1").to route_to("trays#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/trays/1/edit").to route_to("trays#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/trays").to route_to("trays#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/trays/1").to route_to("trays#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/trays/1").to route_to("trays#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/trays/1").to route_to("trays#destroy", id: "1")
    end
  end
end

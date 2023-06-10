require "rails_helper"

RSpec.describe OrdersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/microgreens/orders").to route_to("microgreens/orders#index")
    end

    it "routes to #new" do
      expect(get: "/microgreens/orders/new").to route_to("microgreens/orders#new")
    end

    it "routes to #show" do
      expect(get: "/microgreens/orders/1").to route_to("microgreens/orders#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/microgreens/orders/1/edit").to route_to("microgreens/orders#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/microgreens/orders").to route_to("microgreens/orders#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/microgreens/orders/1").to route_to("microgreens/orders#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/microgreens/orders/1").to route_to("microgreens/orders#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/microgreens/orders/1").to route_to("microgreens/orders#destroy", id: "1")
    end
  end
end

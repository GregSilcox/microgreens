require "rails_helper"

module Microgreens
  RSpec.describe ProductsController, type: :routing do
    describe "routing" do
      it "routes to #index" do
        expect(get: "/microgreens/products").
          to route_to("microgreens/products#index")
      end

      it "routes to #new" do
        expect(get: "/microgreens/products/new").
          to route_to("microgreens/products#new")
      end

      it "routes to #show" do
        expect(get: "/microgreens/products/1").
          to route_to("microgreens/products#show", id: "1")
      end

      it "routes to #edit" do
        expect(get: "/microgreens/products/1/edit").
          to route_to("microgreens/products#edit", id: "1")
      end

      it "routes to #create" do
        expect(post: "/microgreens/products").
          to route_to("microgreens/products#create")
      end

      it "routes to #update via PUT" do
        expect(put: "/microgreens/products/1").
          to route_to("microgreens/products#update", id: "1")
      end

      it "routes to #update via PATCH" do
        expect(patch: "/microgreens/products/1").
          to route_to("microgreens/products#update", id: "1")
      end

      it "routes to #destroy" do
        expect(delete: "/microgreens/products/1").
          to route_to("microgreens/products#destroy", id: "1")
      end
    end
  end
end

require "rails_helper"

RSpec.describe GreensController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/greens").to route_to("greens#index")
    end

    it "routes to #new" do
      expect(get: "/greens/new").to route_to("greens#new")
    end

    it "routes to #show" do
      expect(get: "/greens/1").to route_to("greens#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/greens/1/edit").to route_to("greens#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/greens").to route_to("greens#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/greens/1").to route_to("greens#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/greens/1").to route_to("greens#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/greens/1").to route_to("greens#destroy", id: "1")
    end
  end
end

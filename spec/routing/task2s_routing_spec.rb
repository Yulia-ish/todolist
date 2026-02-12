require "rails_helper"

RSpec.describe Task2sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/task2s").to route_to("task2s#index")
    end

    it "routes to #new" do
      expect(get: "/task2s/new").to route_to("task2s#new")
    end

    it "routes to #show" do
      expect(get: "/task2s/1").to route_to("task2s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/task2s/1/edit").to route_to("task2s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/task2s").to route_to("task2s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/task2s/1").to route_to("task2s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/task2s/1").to route_to("task2s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/task2s/1").to route_to("task2s#destroy", id: "1")
    end
  end
end

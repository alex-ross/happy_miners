require "spec_helper"

describe Forum::TopicsController do
  describe "routing" do

    it "routes to #index" do
      get("/forum/topics").should route_to("forum/topics#index")
    end

    it "routes to #new" do
      get("/forum/topics/new").should route_to("forum/topics#new")
    end

    it "routes to #show" do
      get("/forum/topics/1").should route_to("forum/topics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forum/topics/1/edit").should route_to("forum/topics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forum/topics").should route_to("forum/topics#create")
    end

    it "routes to #update" do
      put("/forum/topics/1").should route_to("forum/topics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forum/topics/1").should route_to("forum/topics#destroy", :id => "1")
    end

  end
end

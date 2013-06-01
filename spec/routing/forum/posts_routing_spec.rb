require "spec_helper"

describe Forum::PostsController do
  describe "routing" do

    it "routes to #index" do
      get("/forum/posts").should route_to("forum/posts#index")
    end

    it "routes to #new" do
      get("/forum/posts/new").should route_to("forum/posts#new")
    end

    it "routes to #show" do
      get("/forum/posts/1").should route_to("forum/posts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forum/posts/1/edit").should route_to("forum/posts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forum/posts").should route_to("forum/posts#create")
    end

    it "routes to #update" do
      put("/forum/posts/1").should route_to("forum/posts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forum/posts/1").should route_to("forum/posts#destroy", :id => "1")
    end

  end
end

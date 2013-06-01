require "spec_helper"

describe Forum::CategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/forum/categories").should route_to("forum/categories#index")
    end

    it "routes to #new" do
      get("/forum/categories/new").should route_to("forum/categories#new")
    end

    it "routes to #show" do
      get("/forum/categories/1").should route_to("forum/categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forum/categories/1/edit").should route_to("forum/categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forum/categories").should route_to("forum/categories#create")
    end

    it "routes to #update" do
      put("/forum/categories/1").should route_to("forum/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forum/categories/1").should route_to("forum/categories#destroy", :id => "1")
    end

  end
end

class PlacesController < ApplicationController
    
    #Index
    def index
        @places = Place.all 
    end 

    #Show
    def show
        @place = Place.find(params["id"]) 
        @posts = Post.where({"place_id" => @place["id"]})
    end
   
    #New
    def new 
        @place = Place.new
    end

    #Create
    def create
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/places"
    end 
end


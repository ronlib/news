class CatagoriesController < ApplicationController
  def index
    @catagories = Catagory.all    
    render '_index'
  end
  
  def new
  end
  
  def show        
    @catagory = Catagory.find(params[:id])
  end
end

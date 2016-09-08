class PlacesController < ApplicationController
  def index
    @places = Place.order('created_at DESC')
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      flash[:success] = "Place added!"
      redirect_to root_path
    else
      render 'new'
    end
  end
def show
 # @nearby_place = @place.nearbys(50)

  @place = Place.find(params[:id])
 if params[:search].present?
    @locations = Place.near(params[:search], 50, :order => :distance)
  else
    @locations = Place.all
  end
end
  private

  def place_params
    params.require(:place).permit(:title, :address, :visited_by)
  end
end
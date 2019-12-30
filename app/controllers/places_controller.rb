class PlacesController < ApplicationController

  def index
    render json: Place.all
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    return render_nor_found if @place.blank?
  end

end

class CitiesController < ApplicationController

  def show
    @city = City.find_by_id(params[:id])
    city_id = params[:id]
    @posts = Post.where(city_id: city_id).order('created_at DESC').all

  end


end

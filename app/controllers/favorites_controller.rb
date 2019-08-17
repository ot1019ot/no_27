class FavoritesController < ApplicationController
	before_action :authenticate_user!

  def create
  	@car = Car.find(params[:car_id])
  	@favorite = current_user.favorites.new(car_id: params[:car_id])
  	@favorite.save
  	redirect_to car_path(@favorite.car_id)
  end

  def destroy
  	@car = Car.find(params[:car_id])
  	@favorite = current_user.favorites.find_by(car_id: params[:car_id])
  	@favorite.destroy
  	redirect_to car_path(@favorite.car_id)
  end
end

class FavouritesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      @favourites = policy_scope(Favourite).search_flats_by_title_or_description_or_address(params[:query])
    else
      @favourites = policy_scope(Favourite)
    end
  end

  def create
    @flat = Flat.find(params[:format])
    @favourite = current_user.favourites.new(flat: @flat)
    authorize @favourite

    @favourite.save
    redirect_to flats_path
  end

  def destroy
    @favourite = Favourite.find_by(flat_id: params[:id].to_i, user_id: current_user.id)
    authorize @favourite
    @favourite.destroy
    redirect_back(fallback_location: flats_path)
  end
end

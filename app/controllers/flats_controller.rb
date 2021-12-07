class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_flat, only: %I[show edit update destroy]

  def index
    @flats = policy_scope(Flat)
  end

  def show
  end

  def new
    @flat = current_user.flats.new
    authorize @flat
  end

  def create
    @flat = current_user.flats.new(flat_params)
    authorize @flat

    @flat.user_id = current_user

    if @flat.save
      redirect_to @flat
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    if @flat.save
      redirect_to @flat
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :bed, :bath, :bedroom, :price)
  end
end

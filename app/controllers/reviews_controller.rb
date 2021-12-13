class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @flat = Flat.find(params[:flat_id])
    authorize @flat
    @review = Review.new
  end

  def create
    @review = Booking.new(review_params)
    @flat = Flat.find(params[:flat_id])
    @review.flat = @flat
    @review.user = current_user
    authorize @review

    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    @review = Booking.find(params[:id])
    authorize @review
    @review.destroy
    redirect_to flat_path(@review.flat)
  end

  private

  def review_params
    params.require(:review).permit(:raiting, :content)
  end
end

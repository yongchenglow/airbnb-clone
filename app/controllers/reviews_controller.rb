class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @flat = Flat.find(@booking.flat_id)
    @review.booking = @booking
    @review.user = current_user
    authorize @review

    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy
    @review.booking_id
    @flat = Flat.find()
    redirect_to flat_path(@review.flat)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

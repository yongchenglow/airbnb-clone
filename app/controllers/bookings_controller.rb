class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @flat = Flat.find(params[:flat_id])
    authorize @flat
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat
    @booking.user = current_user
    authorize @booking

    if @booking.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to flat_path(@booking.flat)
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin_date, :checkout_date, :guest)
  end
end

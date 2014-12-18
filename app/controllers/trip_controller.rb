class TripController < ApplicationController
include ApplicationHelper
before_action :confirm_logged_in 

  def index
    @trips = Trip.all
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def new
    @user = User.find_by_id(session[:user_id]) 
    @trip = Trip.new
  end

  def create
    @user = User.find_by_id(session[:user_id]) 
    departure = params[:departure]
    destination = params[:destination]
    startDate = params[:startDate]
    endDate = params[:endDate]
    seats = params[:seats]
    trip = Trip.create(
      departure: departure,
      destination: destination,
      startDate: startDate,
      endDate: endDate,
      seats: seats)
    @user.trips.push(trip)
    redirect_to trip_path
  end

  def show
    @trip = Trip.find_by_id(params[:id])
    @departure = @trip.departure.downcase.tr(" ", "_")
    @destination = @trip.destination.downcase.tr(" ", "_")
    @url = "https://www.google.com/maps/embed/v1/directions?key=AIzaSyAri8-XfDTUf1blrutB1Ebc4EbhVLaQMqY&origin=#{@departure}&destination=#{@destination}&avoid=tolls|highways"
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update_attributes (trip_params)
    if @trip.save
      flash[:success] = "Trip updated"
      redirect_to home_path
    else
      render :edit
    end
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    flash[:success] = "Trip deleted"
    redirect_to home_path
  end

    private
  def trip_params
    params.require(:trip).permit(:departure, :destination, :startDate, :endDate, :seats)
  end
end

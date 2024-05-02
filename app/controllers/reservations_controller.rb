class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    if params[:driver_id]
      @driver = Driver.find_by(id: params[:driver_id])
      if @driver.nil?
        flash[:alert] = "Driver not found."
        redirect_to drivers_path # redirect somewhere appropriate if driver is not found
      end
    end
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      # Vous pouvez ajouter ici une logique pour notifier les chauffeurs disponibles ou choisir un chauffeur.
      redirect_to reservation_path(@reservation), notice: 'Votre réservation a été créée avec succès. Nous recherchons un chauffeur pour vous.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_location, :end_location, :reservation_date, :reservation_time)
  end
end

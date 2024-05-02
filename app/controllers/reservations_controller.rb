class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
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

class PaymentsController < ApplicationController
  before_action :load_skater
  before_action :load_payment, except: [:new, :create]

  def new
    @payment = Payment.new
  end
  def create
    @payment = @skater.payments.build(payment_params)
    @payment.date = Date.current
    if @payment.save
      redirect_to skaters_url
    else
      render new
    end
  end

  def destroy
    @payment.destroy
    redirect_to edit_skater_path(@skater)
  end

  private

  def payment_params
    params.require(:payment).permit(:skater_id,:date,:payment_type_id,:amount,:deposit_id)
  end

  def load_payment
    @payment = Payment.find(params[:id])
  end

  def load_skater
    @skater = Skater.find(params[:skater_id])
  end
end

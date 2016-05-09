class DepositsController < ApplicationController

  def new
    @deposit = Deposit.new()
    @payments = Payment.all()
  end

  def create
    deposit = Deposit.new(deposit_params)

    #add some code here to update the payments in
    #payment_ids[] with the deposit id we just created
    payment_ids = params[:payment_ids]
   if params[:payment_ids] == nil
      flash[:alert] = "No payments were choosen for this deposit"
      redirect_to new_deposit_path
    elsif deposit.save
      flash[:notice] = "Deposit succesfully saved!"
      redirect_to skaters_path
    else
      render new
    end
  end
private

def deposit_params
  params.require(:deposit).permit(:date, :deposit_identifier, :deposit_receipt_photo)
end
end

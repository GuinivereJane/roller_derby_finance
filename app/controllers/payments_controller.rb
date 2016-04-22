class PaymentsController < ApplicationController
  before_action :load_skater

  def new
    @payment = Payment.new
  end

  def create
  end

  private
  def load_skater
    @skater = Skater.find(params[:skater_id])
  end
end

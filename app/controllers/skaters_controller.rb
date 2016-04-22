class SkatersController < ApplicationController
  before_action :load_skater, except: [:index, :new, :create]

  def index
    @skaters = Skater.all
  end

  def new
    @skater = Skater.new
  end
  def create
    skater = Skater.new(skater_params)
    if skater.save
      redirect_to skaters_url
    else
      render :new
    end
  end

  def update
    if @skater.update_attributes(skater_params)
      redirect_to skaters_url
    else
      render :edit
    end
  end

  def destroy
    @skater.destroy
    redirect_to skaters_url
  end
  private

  def skater_params
    params.require(:skater).permit(:skater_id, :name, :derby_name, :derby_number)
  end

  def load_skater
    @skater = Skater.find(params[:id])
  end
end

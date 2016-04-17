class SkatersController < ApplicationController
  def index
    @skaters = Skater.all
  end
end

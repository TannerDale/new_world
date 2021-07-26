class WeaponstylesController < ApplicationController
  def index
    @weaponstyles = Weaponstyle.all
  end

  def show
    @weaponstyle = Weaponstyle.find(params[:id])
  end
end

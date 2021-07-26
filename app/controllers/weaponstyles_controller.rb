class WeaponstylesController < ApplicationController
  def index
    @weaponstyles = Weaponstyle.all
  end
end

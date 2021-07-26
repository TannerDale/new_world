class WeapontypesController < ApplicationController
  def index
    @weapontypes = Weapontype.all
  end

  def show
    @weapontype = Weapontype.find(params[:id])
  end
end

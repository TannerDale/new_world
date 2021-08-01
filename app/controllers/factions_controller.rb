class FactionsController < ApplicationController
  def index
    @factions = Faction.all
  end

  def new
    @faction = Faction.new
  end

  def create
    new_faction = Faction.create({
      name: params[:name],
      description: params[:description]
      })
    new_faction.save
    redirect_to '/factions'
  end
end

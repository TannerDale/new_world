class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def new
    @weapon = Weapon.new
  end

  def create
    weapon = Weapon.create({
      name: params[:name],
      damage: params[:damage],
      rarity: params[:rarity],
      perk: params[:perk],
      weapontype_id: params[:weapontype_id]
      })

    weapon.save

    redirect_to '/weapons'
  end

  def show
    @weapon = Weapon.find(params[:id])
  end
end

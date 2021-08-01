class UserweaponController < ApplicationController
  def new
  end

  def create
    new_connect = Usersweapon.create({
      user_id: params[:user_id],
      weapon_id: params[:weapon_id]
    })
    new_connect.save
    redirect_to "/"
  end
end

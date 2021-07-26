class AttributesController < ApplicationController
  def index
    @attributes = Attribute.all
  end

  def show
    @attribute = Attribute.find(params[:id])
  end
end

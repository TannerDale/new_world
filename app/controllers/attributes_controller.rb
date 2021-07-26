class AttributesController < ApplicationController
  def index
    @attributes = Attr.all
  end

  def show
    @attribute = Attr.find(params[:id])
  end
end

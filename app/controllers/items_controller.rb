class ItemsController < ApplicationController
  def index
    items = item.all
    render json: items
  end
end

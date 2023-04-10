class ItemsController < ApplicationController
  def index
    items =  Item.all
    # render json: Item.all, methods: [:image_url]
    render json: items, earch_serializer: ItemSerializer
  end
end

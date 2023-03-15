class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        @item.save
    end

    private

    def item_params
        params.require(:item).permit(:name, :content, :category_id, :state_id, :load_id, :area_id, :shipping_id, :price, :image)
    end
end

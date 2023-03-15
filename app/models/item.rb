class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category
    belongs_to_active_hash :state
    belongs_to_active_hash :load
    belongs_to_active_hash :shipping

    has_one_attached :image

    with_options presence: true do
        validates :image
        validates :name
        validates :content
        validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'is invalid'}
    end

    validates :category_id, :state_id, :load_id, :area_id, :shipping_id, numericality: { other_than: 1 , message: "can't  be blank" }  
end

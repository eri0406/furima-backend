class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string  :name,           null:false
      t.text    :content,        null:false
      t.integer :category_id,    null:false
      t.integer :state_id,       null:false
      t.integer :load_id,        null:false
      t.integer :area_id,        null:false
      t.integer :shipping_id,    null:false
      t.integer :price,          null:false
      t.timestamps
    end
  end
end


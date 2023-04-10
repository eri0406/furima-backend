class ItemSerializer < ActiveModel::Serializer 
 
  attributes :id,:image_url, :name, :price, :load_name

  def load_name
    object.load.name
  end
end

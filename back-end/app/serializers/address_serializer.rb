class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city, :state, :zip, :main_id
  belongs_to :main
end

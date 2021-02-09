class SocialSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :className, :main_id
  belongs_to :main
end

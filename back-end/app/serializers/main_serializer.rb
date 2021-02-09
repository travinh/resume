class MainSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :bio, :contactmessage, :email, :phone, :github, :project, :website, :resumedownload, :address_id, :social_id
  has_one :address
  has_many :socials
end

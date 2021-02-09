class WorkSerializer < ActiveModel::Serializer
  attributes :id, :company, :title, :years, :description, :resume_id
  belongs_to :resume
end

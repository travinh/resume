class EducationSerializer < ActiveModel::Serializer
  attributes :id, :school, :degree, :graduated, :description, :resume_id
  belongs_to :resume
end

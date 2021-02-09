class ResumeSerializer < ActiveModel::Serializer
  attributes :id, :skillmessage, :education_id, :work_id, :skills_id
  has_many :educations, :works, :skills
end

class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :resume_id
  belongs_to :resume
end

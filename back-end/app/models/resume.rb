class Resume < ApplicationRecord
    has_many :educations
    has_many :works
    has_many :skills
end

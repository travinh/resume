class Resume < ApplicationRecord
    has_many :educations, :works, :skills
end

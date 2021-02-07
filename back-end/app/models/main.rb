class Main < ApplicationRecord
    has_many :socials, dependent: :destroy
    accepts_nested_attributes_for :address, :socials, reject_if: :all_blank

end

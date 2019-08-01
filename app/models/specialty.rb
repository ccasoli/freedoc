class Specialty < ApplicationRecord
    has_many :doctor_communities
    has_many :doctors, through: :doctor_communities
end

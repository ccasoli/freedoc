class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    has_many :doctor_communities
    has_many :specialties, through: :doctor_communities
    belongs_to :city
end

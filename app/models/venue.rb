class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :users, through: :concerts
    has_many :bands, through: :concerts
end

class Concert < ActiveRecord::Base
    belongs_to :venue
    has_and_belongs_to_many :users, join_table: :users_concerts
    has_and_belongs_to_many :bands, join_table: :concerts_bands
    validates :bands, presence: true
end

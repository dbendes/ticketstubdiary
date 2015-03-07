class Band < ActiveRecord::Base
      has_many :users, through: :concerts
      has_many :venues, through: :concerts
      has_and_belongs_to_many :concerts, join_table: :concerts_bands
      validates :sgid, uniqueness: true
end


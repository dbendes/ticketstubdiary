class Concert < ActiveRecord::Base
    belongs_to :venue
    has_and_belongs_to_many :users, join_table: :users_concerts
    has_and_belongs_to_many :bands, join_table: :concerts_bands
    validates :bands, presence: true
    validates :venue, presence: true
    attr_reader :venue_tokens, :band_tokens
    
    def venue_tokens=(ids)
        self.venue_id = ids
    end
    def band_tokens=(ids)
        self.band_ids = ids.split(",")
    end
    
end

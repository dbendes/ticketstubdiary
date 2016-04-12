class Build < ActiveRecord::Base
    has_many :build_parts
    has_many :parts, through: :build_parts
end

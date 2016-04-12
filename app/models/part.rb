class Part < ActiveRecord::Base
    has_many :build_parts
    has_many :builds, through: :build_parts
end

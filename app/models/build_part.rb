class BuildPart < ActiveRecord::Base
  belongs_to :build
  belongs_to :part
end

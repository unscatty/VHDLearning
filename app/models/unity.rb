class Unity < ActiveRecord::Base
  belongs_to :section
  has_many :topics
end

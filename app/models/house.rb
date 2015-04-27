class House < ActiveRecord::Base
	belongs_to :slum
	has_many :women, dependent: :destroy
end

class Woman < ActiveRecord::Base
	belongs_to :house
	has_many :children, dependent: :destroy
	has_many :anc_visits, dependent: :destroy
end

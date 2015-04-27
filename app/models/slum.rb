class Slum < ActiveRecord::Base
  belongs_to :city
  has_many :houses, dependent: :destroy
end

class Animal < ActiveRecord::Base 
    belongs_to :zoo 
    has_many :species
end
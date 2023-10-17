class Animal < ActiveRecord::Base 
    belong_to :zoo 
    has_many :species
end
class Zoo < ActiveRecord::Base 
    has_many :animals 
    has_many :species, through: :animals 
end 
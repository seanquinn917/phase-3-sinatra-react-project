class Actor < ActiveRecord::Base 
    belongs_to :broadway_show
    has_many :roles
end
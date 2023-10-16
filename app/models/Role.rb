class Role < ActiveRecord::Base
    belongs_to :broadway_show
    belongs_to :actor
end
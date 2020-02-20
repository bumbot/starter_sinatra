class Food < ActiveRecord::Base
    has_many :foodowner
    has_many :employees, through: :foodowner

    
end
class Employee < ActiveRecord::Base
    has_many :foodowner
    has_many :foods, through: :foodowner
end
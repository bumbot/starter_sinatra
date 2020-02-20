class Foodowner< ActiveRecord::Base
    belongs_to :food
    belongs_to :employee


    def snippet_me
        self.snippet
    end
end
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        actor_arr = []
        for actor in self.actors do
            actor_arr << actor.full_name
        end
        return actor_arr
    end

end
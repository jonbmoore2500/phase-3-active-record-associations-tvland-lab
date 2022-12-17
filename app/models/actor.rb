class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        return "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        rolesArr = []
        for role in self.characters do
            rolesArr << "#{role.name} - #{role.show.name}"
        end
        return rolesArr
    end


end
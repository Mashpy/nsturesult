class Nstuseatplan < ActiveRecord::Base
   def self.search(search)
where("#{search} BETWEEN roll_start AND roll_end")

end 
end

class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #binding.pry

        self.actors.map{|a| "#{a.first_name} #{a.last_name}"}
        #binding.pry
    end
  
end
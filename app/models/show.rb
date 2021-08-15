class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors ,through: :characters
  belongs_to :network
  
  def actors_list
    arrayActorsList = []
    self.actors.each do |actor|
        arrayActorsList << "#{actor.first_name} #{actor.last_name}"
    end
    arrayActorsList
  end

end
require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    binding.pry
    self.characters.collect do |c|
      info = "#{c.actor.first_name} #{c.actor.last_name}"
      info
    end
  end
end

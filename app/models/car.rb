class Car < ApplicationRecord
  # validates_presence_of :make
  # validates_uniqueness_of :make

  validates :make, uniqueness: true, presense: trure

  #return all cars ascendding order by model
  def self.by_model

  end

  #return all cars ascendding order by make
  def self.by_make

  end

  #no params pass return ascending all the car by mileage
  # :desc order by mileage
  def self.by_mileage(direction = :asc)

  end

  #chnage the color of the car with the param
  def paint(color)

  end

  #return a hash of all the car's infor 
  def info

  end

  #return a string of the car horn
  def honk

  end

end

class Car < ApplicationRecord
  # validates_presence_of :make
  # validates_uniqueness_of :make 

  validates :make, uniqueness: true, presence: true

  # return all cars asc order by model
  def self.by_model
    order(:model)
  end

  # return all cars asc order by make
  def self.by_make
    # Car.order(:make)
    order(:make)
  end

  # no params pass return asc all the car by mileage
  # :desc order by mileage
  def self.by_mileage(direction = :asc)
    # Car.order(mileage: :asc)
    # Car.order(mileage: :desc)
    order(mileage: direction)
  end

  # change the color of the car with the param
  def paint(color)
    self.update(color: color)
  end

  # return a hash of all the car's info 
  def info
    self.attributes.except('id', 'created_at', 'updated_at')
  end

  # return a string of the car horn
  def honk
    'Loud!!!'
  end

end
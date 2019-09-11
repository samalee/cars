require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'What a car has' do
    # it 'has a make' do
    #   make = 'Hummer'
    #   car = Car.create(make: make)
    #   expect(car.make).to eq(make)
    # end

    # it 'has a model' do
    #   model = 'Civic'
    #   car = Car.create(model: model)
    #   expect(car.model).to eq(model)
    # end

    it { should respond_to :make }
    it { should respond_to :model }
    it { should respond_to :year }
    it { should respond_to :wheels }
    it { should respond_to :color }
    it { should respond_to :mileage }

  end

  describe 'validations' do
    it { should validate_uniqueness_of(:make) }
    it { should validate_presence_of(:make) }
  end

end
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

  describe 'class methods' do
    before(:each) do
      @car1 = Car.create(make: 'Tesla', model: 'TZ', mileage: 0)
      @car2 = Car.create(make: 'Honda', model: 'Cooler', mileage: 1234)
      @car3 = Car.create(make: 'Kia', model: 'Optima', mileage: 324214)
    end

    it 'should sort by make :asc' do
      expect(Car.by_make).to eq([@car2, @car3, @car1])
    end

    it 'should sort by model :asc' do
      expect(Car.by_model).to eq([@car2, @car3, @car1])
    end

    it 'should sort by mileage :asc' do
      expect(Car.by_mileage).to eq([@car1, @car2, @car3])
    end

    it 'should sort by mileage :desc' do
      expect(Car.by_mileage(:desc)).to eq([@car3, @car2, @car1])
    end
  end

  describe 'instance methods' do
    before(:each) do
      @attr = {
        make: 'Toyata',
        model: 'Prius',
        color: 'Purple',
        mileage: 100000,
        wheels: true,
        year: 2012
      }

      @car = Car.create(@attr)
    end

    it 'should paint the car' do
      @car.paint('Blue')
      expect(@car.color).to eq('Blue')
    end

    it 'should return the car info' do
      expect(@car.info).to eq(@attr.with_indifferent_access)
    end

    it 'should honk' do
      expect(@car.honk).to eq('Loud!!!')
    end
  end

end




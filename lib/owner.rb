require 'pry'
class Owner
  # code goes here
  # knows about its pets

  @@owners = []
  @@count = 0

  attr_accessor :count, :pets, :name
  attr_reader :species

  def initialize(name)
    @species = 'human'
    @name = name
    @@count += 1
    @@owners << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.collect do |species, pets|
      pets.each do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  # binding.pry

end

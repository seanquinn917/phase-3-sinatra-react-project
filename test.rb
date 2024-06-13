require 'pry'

class Pet 

attr_accessor :name
@@all= []

def initialize(name)
    @name=name
    @@all << self
end 

def self.all
    "hello"
 @@all
 "goodbye"
end

end

fido = Pet.new("Fido")
p Pet.all

require_relative '../config/environment.rb'

a1 = Artist.new("Dali", 60)
#a2 = Artist.new("Kusama", 70)
a3 = Artist.new("Pollock", 45)
a4 = Artist.new("Warhol", 37)
a5 = Artist.new("Kahlo", 29)

g1 = Gallery.new("MoMA", "NYC")
g2 = Gallery.new("Art Institute", "Chicago")
g3 = Gallery.new("The Met", "NYC")
g4 = Gallery.new("Tate Modern", "London")

p1 = Painting.new("The Persistance of Memory", 1000000, a1, g4)
p2 = Painting.new("Autumn Rhythm", 4000000, a3, g2)
p1 = Painting.new("Marilyn Diptych", 5000000, a4, g1)
p1 = Painting.new("My Broken Column", 900000, a5, g3)




binding.pry

puts "Bob Ross rules."

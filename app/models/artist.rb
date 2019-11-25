class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map {|p| p.gallery}
  end 

  def cities
    galleries.map {|g| g.city}
  end

  def self.total_experience
    (@@all.map {|a| a.years_experience}).sum
  end 

  def prolific 
    paintings.length/years_experience.to_f
  end 

  def self.most_prolific
    most_prof = (@@all.map {|a| a.prolific}).max
    @@all.find {|a| a.prolific == most_prof}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end

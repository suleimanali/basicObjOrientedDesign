class Animal
  attr_accessor :name, :type
  def intialize name, type, legs_or_crawl
    @name = name
    @type = type
    @legs_or_crawl =legs_or_crawl
  end
end

class Reptile < Animal
  def initialize name,type, legs_or_crawl, water_land
    super name, type,legs_or_crawl
    @water_land = water_land
  end  
end

class Mammals < Animal
  def initialize name, type,legs_or_crawl,how_manny_legs
    super name, type,legs_or_crawl
    @how_manny_legs = how_manny_legs    
  end 
end

reptile = Reptile.new("snake", "reptile", "crawl", "both")
  
  
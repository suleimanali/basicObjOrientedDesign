class Person
  attr_reader :first_name, :last_name, :gender #used access the instance variable from outside the class
  attr_writer :first_name #let's you overwrite the instance variable.
  def initialize first_name, last_name, gender
    @first_name = first_name
    @last_name = last_name
    @gender = gender    
  end

  def full_name
    first_name + " "+ last_name
  end
  
  private
  def zoo
    "Ship to Africa" unless gender == "M"  
       
  end
end

class Screencaster < Person
  def initialize first_name, last_name, gender, tools
    super first_name, last_name, gender
    @tools = tools
  end
  
end

class Student <Person
  def initialize first_name, last_name, gender, preffered_language
    super first_name,last_name,gender
    @preffered_language = preffered_language
  end
  
end
person = Person.new("suleiman", "ali", "M")
caster = Screencaster.new("suleiman", "ali", "M", ["cool", "mic"])
caster.full_name
student = Screencaster.new("suleiman", "ali", "M", ["cool", "mic"])

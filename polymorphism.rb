class Person
  attr_reader :first_name, :last_name
  def initialize first_name, last_name, gender
    @first_name = first_name
    @last_name = last_name
    @gender = gender    
  end

  def first_name
    @first_name.capitalize!

  end
  def last_name
    @last_name.capitalize!

  end

  def full_name
    first_name + " "+ last_name
  end
  
  def present
    "Hello, my name is #{full_name}, my gender is #[gender]."
  end
end

class Screencaster < Person
  def initialize first_name, last_name, gender, tools
    super first_name,last_name,gender
    @tools = tools
  end
  
  def present #update to represent something else than what is in the present method in line 22.
    "Welcome to our family house Mr. #{last_name}."
  end
  
end

class Student <Person
  def initialize first_name, last_name, gender, preffered_language
    super first_name,last_name,gender
    @preffered_language = preffered_language
  end
  
  def present #update to represent something else than what is in the present method in line 22.
    "How is your first week in school Mrs. #{last_name}."
  end
  
end
person = Person.new("suleiman", "ali", "M")
caster = Screencaster.new("suleiman", "ali", "M", ["cool", "mic"])
student = Screencaster.new("suleiman", "ali", "M", ["cool", "mic"])

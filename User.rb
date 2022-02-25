


class User 
  attr_accessor :first_name, :last_name, :age 

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age 
  end

  def full_name 
     "#{first_name} #{last_name}"
  end

  def change_age(num)
    @age = num 
  end
end
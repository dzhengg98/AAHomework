# Instance and Class Variables

## Instance variables
Instance variables are defined with a single @ sign. 

```ruby
class Car
  attr_accessor :color, :wheels
  def initialize(color, wheels)
    @color = color
    @wheels = wheels
  end
end
car_1 = Car.new("black", 4)
p car_1.color               # black
p car_1.wheels              # 4
```

An instance variable will be a distinct variable in each instance of a class. This means that changing the variable will only affect the one instance of the class and will not affect other instances of the class.

## Class variables
Class variables will be shared among all instances of a class.

```ruby
class Car
  @@wheels = 4
  def self.upgrade
    @@wheels = 0
  end
  def initialize(color)
    @color = color
  end
  def wheels
    @@wheels
  end
end

car_1 = Car.new("red")
car_2 = Car.new("black")

p car_1.wheels          # 4
p car_2.wheels          # 4
Car.upgrade
p car_1.wheels          # 0
p car_2.wheels          # 0
```

Changing the class variable will effect all instances because all instances are apart of the same class. They are denoted with double @ signs.

## CLASS_CONSTANTS
Class constants are similar to class variables but they cannot be changed/mutated. They are still shared among all instances of a class and are written with all capital letters.

```ruby
class Car
  WHEELS = 4
  def initialize(color)
    @color = color
  end
  def wheels
    WHEELS
  end
end

car_1 = Car.new("red")
p car_1.wheels          # 4
```

## Difference between instance methods and class methods
Instance methods call on the instance of a class. This means it only affects a singular instance of the class and does not affect the entire class. For notation, we use [class]#[method] to denote that the method is an **instance method** of a certain class.

Class methods call on the whole class. This means it affects the whole class and not just a instance of the class. We define class methods by adding **self.** in the front of the method name. For notation, we use [class]::[method] to denote that the method is an **class method** of a certain class.

```ruby
class Dog
  def initialize(name, bark)
    @name = name
    @bark = bark
  end

  def self.whos_louder(dog_1, dog_2)
    if dog_1.bark.length > dog_2.bark.length
      return dog_1.name
    elsif dog_1.bark.length < dog_2.bark.length
      return dog_2.name
    else
      return nil
    end
  end

  def name
    @name
  end

  def bark
    @bark
  end
end
```

**Dog::whos_louder** is a **class method** since it affects the class Dog and not just a certain instance of Dog

**Dog#name** and **Dog#bark** is a **instance method** since it affects a single instance of the Dog class.
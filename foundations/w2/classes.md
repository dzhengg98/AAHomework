# Classes
Classes are a way to improve code and follow the **DRY** (**D**on't **R**epeat **Y**ourself) rule. By using a class we can avoid repetition and easily create objects.

## Creating a Class
You create a class by calling the *class* keyword on the name of the class you want to create.
You can then define methods within the class.

```ruby
class Cat
  def initalize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end
```

The initalize method calls on the class and create a *instance variable* of the class.

## Initializing a instance variable of class
To initialize a instance variable of the class, set a *variable* equal to the [class name].new of the class and apply the required arguments to the class

```ruby
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
cat_2 = Cat.new("Whiskers", "white", 5)
```

Since the above Cat class expects a name, color, and age in it's initalize method, we give our *Cat.new* a name, color, and age to initalize it.

## Getter Methods
Adds a method to get the attribute you need for the instance of the class and set it equal to the attribute.

```ruby
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
  def name
    @name
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1.name # "Sennacy"
```

This can also be done with adding a attr_reader above the initialize method.

```ruby
class Cat
  attr_reader :name
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1.name # "Sennacy"
```

## Setter Methods
Setter methods lets you change the attributes of a class instance. You can create setters by creating a method that accepts an argument. Then inside the argument, you can set the attribute equal to the argument you passed into the method.

```ruby
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
  def age=number
    @age = number
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1 #<Cat:0x000000013124c430 @age=3, @color="brown", @name="Sennacy">
cat_1.age = 5
p cat_1 #<Cat:0x000000013124c430 @age=5, @color="brown", @name="Sennacy">
```

This can also be achieved by using attr_writer which should be written above the initialize method.

```ruby
class Cat
  attr_writer :age
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1 #<Cat:0x000000013124c430 @age=3, @color="brown", @name="Sennacy">
cat_1.age = 5
p cat_1 #<Cat:0x000000013124c430 @age=5, @color="brown", @name="Sennacy">
```

There is also **attr_accessor**, a combination of both **attr_reader** and **attr_writer**.

```ruby
class Cat
  attr_accessor :age
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end
end

cat_1 = Cat.new("Sennacy", "brown", 3)
p cat_1       #<Cat:0x000000014e9efb48 @age=3, @color="brown", @name="Sennacy">
p cat_1.age   #3        (getter)
cat_1.age = 5          #(setter)
p cat_1.age   #5       #(using getter again)
p cat_1       #<Cat:0x000000014e9efb48 @age=5, @color="brown", @name="Sennacy">
```

## Other methods
You can also write other methods for your classes that goes beyond setters and getters.

```ruby 
class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def purr
    (@age > 5) ? (puts " #{@name.upcase} goes purrrrr...") : (puts "...")
  end
end

cat_1 = Cat.new("Sennacy", "brown", 10)
cat_1.purr          # "SENNACY goes purrrrrr..."

cat_2 = Cat.new("Whiskers", "white", 3)
cat_2.purr  # "..."
```
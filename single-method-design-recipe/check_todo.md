# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

The user wants to keep track of their tasks by checking if a text includes the string "#TODO"

## 2. Design the Method Signature
```ruby 

is_it_todo = check_todo(text)
text: a string to pass as an argument to check_todo
is_it_todo is a boolean which shows whether the text includes the string "#TODO"

#The method will return true or false.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

check_todo("") #=> false
check_todo("#TODO write code") #=> true
check_todo("food shop #TODO") #=> true
check_todo("buy dog food #TODO feed dog") #=> true
check_todo("it is raining") #=> false

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

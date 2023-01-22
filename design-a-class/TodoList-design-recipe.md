{{PROBLEM}} Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface

Include the initializer and public methods with all parameters and return values.

class TodoList
  def initialize
  #sets a variable to store the todo list
  #sets a variable to store a list of completed tasks
  end

  def add(task) #task is a string representing a task to add to the to-do list
  #adds tasks to the todo list and returns as an array
  end

  def is_complete(task) #task is a string representing a completed task
  #adds the task to the 'completed' task list
  #returns the updated todo list as an array
  end
end

# EXAMPLE

3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
todolist = TodoList.new
todolist.add("") => []

# 2
todolist = TodoList.new
todolist.add("walk the dog") => ["walk the dog"]

# 3
todolist = TodoList.new
todolist.add("walk the dog")
todolist.add("food shop")
todolist.add("make dinner")
todolist.add => ["walk the dog", "food shop", "make dinner"]

# 4
todolist = TodoList.new
todolist.add("walk the dog")
todolist.add("food shop")
todolist.add("make dinner")
todolist.is_completed("walk the dog")
todolist.is_completed => ["food shop", "make dinner"]

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
require 'todo_list'
require 'todo'

RSpec.describe "Todo Integration" do
    it "returns an empty string when no todo tasks have been added" do
        todo = Todo.new("")
        expect(todo.task).to eq ""
    end

    it "passes a todo as an argument and adds it to the todo list" do
        todolist = TodoList.new
        todo_1 = Todo.new("walk the dog")
        result = todolist.add(todo_1)
        expect(result).to eq [todo_1]
    end

    it "returns all incomplete tasks as strings within an array" do
        todolist = TodoList.new
        todo_1 = Todo.new("walk the dog")
        todolist.add(todo_1)
        expect(todolist.incomplete).to eq [todo_1]
    end

    it "returns all complete tasks as strings within an array" do
        todolist = TodoList.new
        todo_1 = Todo.new("walk the dog")
        todo_1.mark_done!
        todolist.add(todo_1)
        expect(todolist.complete).to eq [todo_1]
    end

    it "returns all completed todos as strings within an array" do
        todolist = TodoList.new
        todo_1 = Todo.new("walk the dog")
        todo_1.mark_done!
        todolist.add(todo_1)
        expect(todolist.complete).to eq [todo_1]
    end

    it "marks all todos as completed and returns completed todos" do
        todolist = TodoList.new
        todo_1 = Todo.new("walk the dog")
        todo_2 = Todo.new("food shop")
        todolist.add(todo_1)
        todolist.add(todo_2)
        todolist.give_up!
        expect(todolist.give_up!).to eq todolist.complete
    end
end
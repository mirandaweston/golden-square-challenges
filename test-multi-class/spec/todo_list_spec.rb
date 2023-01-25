require 'todo_list'

RSpec.describe "todo list" do
    it "constructs" do
        todolist = TodoList.new
    end

    it "passes a string as an argument and adds it to an array of todo tasks" do
        todolist = TodoList.new
        result = todolist.add("walk the dog")
        result = todolist.add("food shop")
        expect(result).to eq ["walk the dog", "food shop"]
    end

    it "adds nothing to the todo list array if passed an empty string" do
        todolist = TodoList.new
        result = todolist.add("")
        expect(result).to eq [""]
    end
end
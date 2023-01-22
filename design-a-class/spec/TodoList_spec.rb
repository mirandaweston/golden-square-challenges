require 'TodoList'

RSpec.describe TodoList do
    it "adds nothing to the todo list when passed an empty string" do
        todolist = TodoList.new
        result = todolist.add("")
        expect(result).to eq []
    end

    it "passes a string as an argument and adds it to the list of tasks" do
        todolist = TodoList.new
        result = todolist.add("walk the dog")
        expect(result).to eq ["walk the dog"]
    end

    it "returns a list of tasks added as strings" do
        todolist = TodoList.new
        result = todolist.add("walk the dog")
        result = todolist.add("food shop")
        result = todolist.add("make dinner")
        expect(result).to eq ["walk the dog", "food shop", "make dinner"]
    end

    it "passes a string as an argument which represents a completed task and removes it from the list" do
        todolist = TodoList.new
        result = todolist.add("walk the dog")
        result = todolist.add("food shop")
        result = todolist.add("make dinner")
        complete = todolist.is_completed("walk the dog")
        expect(complete).to eq ["food shop", "make dinner"]
    end
end
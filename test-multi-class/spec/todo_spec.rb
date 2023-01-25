require 'todo'

RSpec.describe Todo do
    it "passes a todo as an argument and returns it as a string" do
        todo = Todo.new("walk the dog")
        expect(todo.task).to eq "walk the dog"
    end

    it "returns an empty string when no todo tasks have been added" do
        todo = Todo.new("")
        expect(todo.task).to eq ""
    end

    it "returns false if a task has not been marked complete" do
        todo = Todo.new("food shop")
        expect(todo.done?).to eq false
    end

    it "returns true if a task is marked as complete" do
        todo = Todo.new("food shop")
        todo.mark_done!
        expect(todo.done?).to eq true
    end
end
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
end
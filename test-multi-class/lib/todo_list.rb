class TodoList
    def initialize
        @todos = []
    end

    def add(todo)
        @todos.push(todo)
    end

    def incomplete
        @todos.each do |todo|
            if todo == true
                todo.delete
            end
        end
    end

    def complete
        @todos.each do |todo|
            if todo == false
                todo.delete
            end
        end
    end

    def give_up!
        @todos.each { |todo| todo.mark_done! }
    end
end
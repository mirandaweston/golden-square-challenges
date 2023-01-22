class TodoList
    
    def initialize
        @tasks = []
        @completed = []
    end

    def add(task)
        if !task.empty?
        @tasks.push(task)
        end
        return @tasks
    end

    def is_completed(task)
        @completed.push(task)
        return @tasks - @completed
    end
end
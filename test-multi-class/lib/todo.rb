class Todo
    def initialize(task)
        @task = task
        @completed = false
    end

    def task
        return @task
    end

    def mark_done!
        return @completed = true
    end

    def done?
        return @completed
    end
end
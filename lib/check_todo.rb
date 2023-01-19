def check_todo(text)
    if !text.include?("#TODO")
        return false
    end
end
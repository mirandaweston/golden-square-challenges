def check_todo(text)
    if text.include?("#TODO")
        return true
    else
        return false
    end
end
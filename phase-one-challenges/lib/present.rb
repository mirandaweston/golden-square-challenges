class Present
    def wrap(contents)
        fail "A contents has already been wrapped." unless @contents.nil?
        @contents = contents
    end

    def unwrap
        fail "No contents have been wrapped." if @contents.nil?
        return @contents
    end
end
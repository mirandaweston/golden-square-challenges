require 'task_formatter'

RSpec.describe TaskFormatter do
    it "formats the task as a string when task is incomplete" do
        fake_task = double(:fake_task, title: "walk the dog", complete?:false)
        #expect(fake_task).to receive(:title).and_return("walk the dog")
        #expect(fake_task).to receive(:complete?).and_return(false)
        formatter = TaskFormatter.new(fake_task)
        expect(formatter.format).to eq "- [ ] walk the dog"
    end

    it "formats the task as a string when task is complete" do
        fake_task = double(:fake_task, title: "walk the dog", complete?:true)
        formatter = TaskFormatter.new(fake_task)
        expect(formatter.format).to eq "- [x] walk the dog"
    end
end
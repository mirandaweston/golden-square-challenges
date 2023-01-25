require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  describe "#all" do

    it "returns list of tasks" do
      task_list = TaskList.new
      task_1 = double :task
      task_2 = double :task
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end
  end

  describe "#all_complete?" do

    it "returns true when all tasks are complete" do
      task_list = TaskList.new
      task_1 = double :task
      expect(task_1).to receive(:complete?).and_return(true)
      task_2 = double :task
      expect(task_2).to receive(:complete?).and_return(true)
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq true
    end

    it "returns false when no tasks are complete" do
      task_list = TaskList.new
      task_1 = double :task
      expect(task_1).to receive(:complete?).and_return(false)
      task_list.add(task_1)
      expect(task_list.all_complete?).to eq false
    end

    it "returns false when some tasks are complete" do
      task_list = TaskList.new
      task_1 = double :task
      task_2 = double :task
      expect(task_1).to receive(:complete?).and_return(true)
      expect(task_2).to receive(:complete?).and_return(false)
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all_complete?).to eq false
    end
  end
end

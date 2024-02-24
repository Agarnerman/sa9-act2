require 'TodoList'
RSpec.describe TodoList do
    describe "#add" do
      it "adds a todo to the list" do
        list = TodoList.new
        todo_text = "Buy chips"
        list.add(todo_text)
        expect(list.todos).to include(todo_text)
        expect(list.todos.size).to eq(1)
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        list = TodoList.new
        todo_text = "Clean up after dog"
        list.add(todo_text)
        list.remove(todo_text)

        expect(list.todos).not_to include(todo_text)
        expect(list.todos.size).to eq(0)
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        list = TodoList.new
        todos = ["Walk the dog", "Do laundry"]
        todos.each { |todo| list.add(todo) }

        expect(list.todos).to eq(todos)
      end
    end
end
  
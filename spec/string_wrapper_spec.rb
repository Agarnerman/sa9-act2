require 'string_wrapper'
RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        original_string = "hello world"
        reversed_string = StringWrapper.new(original_string).reverse
        expect(reversed_string).to eq("dlrow olleh")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        original_string = "hello world"
        upcased_string = StringWrapper.new(original_string).upcase
        expect(upcased_string).to eq("HELLO WORLD")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        original_string = "HELLO WORLD"
        downcased_string = StringWrapper.new(original_string).downcase
        expect(downcased_string).to eq("hello world")
      end
    end
end
  
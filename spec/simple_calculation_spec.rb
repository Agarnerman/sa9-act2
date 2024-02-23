require 'simple_calculation'

RSpec.describe SimpleCalculation do
    describe ".add" do
        it "correctly adds two numbers" do
            expect(SimpleCalculation.add(2, 3)).to eq(5)
        end
    end
end
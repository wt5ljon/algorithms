require 'spec_helper.rb'

describe "insertion_sort" do
	it "returns a sorted array" do
		numbers = [6, 8, 9, 2, 4, 8, 1, 5, 7]
		expect(insertion_sort(numbers)).to eq [1, 2, 4, 5, 6, 7, 8, 8, 9]
	end
end

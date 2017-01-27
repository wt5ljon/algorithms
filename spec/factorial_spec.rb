require 'spec_helper.rb'

describe "factorial1 - non-cursive method" do
	it "returns '1' for 0!" do
		expect(factorial1(0)).to eq 1
	end

	it "returns '120' for 5!" do
		expect(factorial1(5)).to eq 120
	end

	it "returns '5040' for 7!" do
		expect(factorial1(7)).to eq 5040
	end

	it "returns '362880' for 9!" do
		expect(factorial(9)).to eq 362880
	end
end

describe "factorial - recursive method" do
	it "returns '1' for 0!" do
		expect(factorial(0)).to eq 1
	end

	it "returns '120' for 5!" do
		expect(factorial(5)).to eq 120
	end

	it "returns '5040' for 7!" do
		expect(factorial(7)).to eq 5040
	end

	it "returns '362880' for 9!" do
		expect(factorial(9)).to eq 362880
	end
end


require 'spec_helper.rb'

describe "powers" do

	context "test even positive exponents" do
		it "returns 256 for power(2, 8)" do
			expect(power(2, 8)).to eq 256
		end
	
		it "returns 625 for power(5, 4)" do
			expect(power(5, 4)).to eq 625
		end
	end

	context "test odd positive exponents" do
		it "returns 512 for power(2, 9)" do
			expect(power(2, 9)).to eq 512
		end
	
		it "returns 3125 for power(5, 5)" do
			expect(power(5, 5)).to eq 3125
		end
	end

	context "test negative exponents" do
		it "returns 0.03125 for base = 2, exponent = -5" do
			expect(power(2, -5)).to eq 0.03125
		end

		it "returns 0.00032 for base = 5, exponent = -5" do
			expect(power(5, -5)).to eq 0.00032
		end
	end

end


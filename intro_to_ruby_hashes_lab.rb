def base_hash
  # Remember implicit return! We're returning this new Hash _without_ the
  # keyword "return." Nice and neat.
	{}
end

def monopoly_with_second_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end

def monopoly_with_third_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end

def monopoly_with_fourth_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end


describe "We can create complex, nested Hashes by implementing four methods:" do
  describe "the base_hash method returns a Hash that" do
    it "has one key" do
      expect(base_hash.keys.count).to(eq(1), "Make sure you have at least one key defined in the monopoly hash")
    end

    it "the one key is called :railroads" do
      expect(base_hash.has_key?(:railroads)).to(be_truthy, "Make sure you have a key called :railroads in the `monopoly` Hash and that :railroads points to a Hash")
    end

    it "the one key, :railroads, points to an empty Hash" do
      expect(base_hash[:railroads]).to eq({})
    end
  end
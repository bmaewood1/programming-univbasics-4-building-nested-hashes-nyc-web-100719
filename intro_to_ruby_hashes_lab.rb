def base_hash
  monopoly = {
    :railroads => {}
  }
end

def monopoly_with_second_tier
  monopoly = {
    :railroads => {
      :pieces => 4
    }
  }
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


 describe "the monopoly_with_second_tier method builds on the Hash returned by base_hash, but updates the inner Hash pointed at by :railroads such that the Hash" do
    it "has a key called :pieces" do
      expect(monopoly_with_second_tier[:railroads].has_key?(:pieces)).to(be_truthy, "Make sure the nested hash :railroads has a key called :pieces")
    end

    it "has a key, :pieces, points to the Integer value 4" do
      expect(monopoly_with_second_tier[:railroads][:pieces]).to(eq(4), "Make sure the nested hash :railroads has a key called :pieces whose value is 4")
    end
  end
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
  monopoly = {
    :railroads => {
      :pieces => 4
      :rent_in_dollars => {
        :one_piece_owned => 25,
        :two_pieces_owned =>50, 
        :three_pieces_owned => 100, 
        :four_pieces_owned => 200
      }
    }
  }
end

def monopoly_with_fourth_tier
  monopoly = {
    :railroads => {
      :pieces => 4
      :rent_in_dollars => {
        :one_piece_owned => 25,
        :two_pieces_owned =>50, 
        :three_pieces_owned => 100, 
        :four_pieces_owned => 200
      }
    }
  }
end

   it "has a key called :names" do
      expect(monopoly_with_third_tier[:railroads].has_key?(:names)).to(be_truthy, ":railroads should point to a Hash with key names")
    end

    it ":names points to a Hash with four keys" do
      expect(monopoly_with_third_tier[:railroads][:names].keys.count).to(eq(4), ":railroads :names Hash should record 4 railroads")
    end
    

  describe "the monopoly_with_fourth_tier method builds on the hash returned by monopoly_with_third_tier, but updates the Hash so that each of the :railroads :names keys points to a Hash with a key \"mortgage_value\" that is a String with a $-sign and an Integer after it" do

    it "reports reading_railroad's mortgage value as $100" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:reading_railroad]["mortgage_value"]).to eq("$100")
    end

    it "sets the 1st key of the :pennsylvania_railroad hash to a string, 'mortgage_value', whose value is also a string, '$200'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:pennsylvania_railroad]["mortgage_value"]).to eq("$200")
    end

    it "sets the 1st key of the :b_and_o_railroad hash to a string, 'mortgage_value', whose value is also a string, '$400'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:b_and_o_railroad]["mortgage_value"]).to eq("$400")
    end

    it "sets the 1st key of the :shortline_railroad hash to a string, 'mortgage_value', whose value is also a string, '$800'" do
      expect(monopoly_with_fourth_tier[:railroads][:names][:shortline_railroad]["mortgage_value"]).to eq("$800")
    end
  end
end
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
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
end

  describe "the Hash pointed to by :rent_in_dollars" do
        it "has a key :one_piece_owned that points to a fee of 25" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:one_piece_owned)).to(be_truthy, "key :one_piece_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:one_piece_owned]).to(eq(25), ":one_piece_owned should point to the value 25")
        end

        it "has a key :two_pieces_owned that points to a fee of 50" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:two_pieces_owned)).to(be_truthy, "key :two_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:two_pieces_owned]).to(eq(50), ":two_pieces_owned should point to the value 50")
        end

        it "has a key :three_pieces_owned that points to a fee of 100" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:three_pieces_owned)).to(be_truthy, "key :three_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:three_pieces_owned]).to(eq(100), ":three_pieces_owned should point to the value 100")
        end

        it "has a key :four_pieces_owned that points to a fee of 200" do
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars].has_key?(:four_pieces_owned)).to(be_truthy, "key :four_pieces_owned should be present in this Hash")
          expect(monopoly_with_third_tier[:railroads][:rent_in_dollars][:four_pieces_owned]).to(eq(200), ":four_pieces_owned should point to the value 200")
        end
    end

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
        :rent1 => 1,
        :rent2 => 2, 
        :rent3 => 3, 
        :rent4 => 4 
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


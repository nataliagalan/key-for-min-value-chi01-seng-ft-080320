# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# ikea = {:chair => 25, :table => 85, :mattress => 450}
# Think about how to determine which value is the lowest.
# Do you need to compare each value to something as you iterate?
#
# Think about how to collect or store the correct key.
# Remember that you need your method to return just this key.

def key_for_min_value(name_hash)
  # Convert hash to array
  name_array = name_hash.to_a

  # Default key value
  d_value = 1000
  d_key = 0

  # Iterate over new array
  name_array.each do |row|
      # If current value is lower than default, change value&key
      if row[1] < d_value
        d_value = row[1]
        d_key = row[0]
      end
   end

 if name_hash == {}
  return nil
 else
  return d_key
 end

end

lookup = Hash[]

# Create and add a subhash.
subhash = Hash[]
subhash["paws"] = 4
subhash["fur"] = "orange"

lookup["cat"] = subhash

# Create another subhash.
subhash = Hash[]
subhash["tail"] = 1
subhash["ears"] = 2

lookup["dog"] = subhash

# Display nested hashes.
puts lookup["cat"]
puts lookup["dog"]

# Get values from nested hashes.
puts lookup["cat"]["paws"]
puts lookup["dog"]["ears"]

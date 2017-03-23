# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split the string
  # create first array 
  # create empty hash
  # iterate through the array to populate the hash keys & assign default value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list 
# input: list, item name, and optional quantity
# steps: 
  # create a new key to the hash (item name)
  # add value (optional quantity) or 1 if no optional quantity is given
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps:
  # delete the key (item name)
# output: hash

# Method to update the quantity of an item
# input: list, item name, optional quantity
# steps:
  # find key and change value
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # format output
# output: string


def create_list(groceries)
  grocery_list = {}
  grocery_items = groceries.split(' ')
  grocery_items.each do |item|
    grocery_list[item] = 1
  end
  p grocery_list

end

def add_item (grocery_list, item, quantity=1)
  grocery_list[item] = quantity
  p grocery_list
end

def remove_item (grocery_list, item)
  grocery_list.delete(item)
  p grocery_list
end

def update_quantity (grocery_list, item, quantity)
  grocery_list[item] = quantity
  p grocery_list
end

def print_list (grocery_list)
  grocery_list.each do |item, quantity|
    p "#{item}: #{quantity}"
  end
end

create_list("banana melon ice bread")


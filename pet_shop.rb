def pet_shop_name(s)
  return s[:name]

end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, pets_sold)
  return pet_shop[:admin][:pets_sold] += pets_sold
end


def stock_count(pet_shop)
  return pet_shop[:pets].count
end


def pets_by_breed(pet_shop, breed)
  array_of_same_breed = Array.new
  for x in pet_shop[:pets]
    if x[:breed] == breed
      array_of_same_breed.push(x)
    end
  end
  return array_of_same_breed
end
#   array_of_same_breed.push(pet_shop[:pets][1][:breed])
#   end
#   return array_of_same_breed
# end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    else
      return nil
    end
  end
end

def remove_pet_by_name(pet_shop, name)
  pet_shop = pet_shop[:pets]
  for animal in pet_shop
    if animal[:name] == name
      pet_shop.delete(animal)
    else
      return nil
    end
  end
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet[0]
  return pet_shop[:pets].count
end

def customer_pet_count(customers)
  pets = customers[:pets]
  # if pets.empty?
  #   return 0
  # else
    return pets.count
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet[0]
  return customer[:pets]
end


def customer_can_afford_pet(customer, new_pet)
  for person in customer
    if person[:cash] >= new_pet[0][:price]
      # new_pet[0] >> person[:pets]
      return true
    else
      return false
    end
  end
end

# def test_customer_can_afford_pet__insufficient_funds
#   customer = @customers[1]
#   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
#   assert_equal(false, can_buy_pet)
# end

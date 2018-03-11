def pet_shop_name(pet_shop)
  return pet_shop[:name]

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

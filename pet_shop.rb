def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  cash_before = pet_shop[:admin][:total_cash]
  cash_after =  pet_shop[:admin][:total_cash] += amount
  if cash_before <  cash_after
    return cash_before + amount
  else cash_before > cash_after
    return pet_shop[:admin][:total_cash] - amount
 end
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, amount)
  pets_sold_before = pet_shop[:admin][:pets_sold]
  pets_sold_after = pet_shop[:admin][:pets_sold] += amount
  if pets_sold_before < pets_sold_after
    return pets_sold_before + amount
 end
end

def stock_count(pet_shop)
    return pet_shop[:pets].length
end

 def pets_by_breed(pet_shop, breed)
   total = []
    for pets in pet_shop[:pets]
      if pets[:breed] == breed

        total << pets[:breed]
      end
    end
    return total
    # p total.count
end


# def find_pet_by_name(pet_shop, name)
#   for pet in pet_shop[:pets]
#     if pet[:name] == name
#       return pet[:name]
#    end
#  end
# end

# def remove_pet_by_name(pet_shop, name)
#   for pet in pet_shop[:pets]
#     if pet[:name] == name
#       return pet.delete()
#     end
#   end
# end

def add_pet_to_stock(pet_shop, name)
  pet_shop[:pets] << name
  p pet_shop[:pets].length
end

def customer_cash(customer)
      return customer[:cash]
end


# def remove_customer_cash(customer, cash)
#    return customer[:cash] - cash
# end

def customer_pet_count(customer)
  p customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
    customer[:pets] << new_pet
   return customer[:pets].count
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] > new_pet[:price]
    return true
  else
    return false
  end
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
    return pet_shop[:name]
   end
  end
end

# def sell_pet_to_customer(pet_shop, pet, customer)
#   customer_pets_before = customer[:pets]
#   customer_pets_after = customer[:pets] << pet
#   customer_cash_before = customer[:cash]
#   customer_cash_after = customer[:cash] - pet[:price]
#   pets_in_pet_shop_before = pet_shop[:pets]
#   pets_in_pet_shop_after = pet_shop[:pets] - pet
#   if customer_pets_before != customer_pets_after && customer_cash_before != customer_cash_after && pets_in_pet_shop_before != pets_in_pet_shop_after
#        customer[:pets] << pet
#        customer[:cash] - pet[:price]
#
#         p customer[:pets].count, pet_shop[:pets].count, customer_cash_after, pet[:price]
#     end
# end
#   for item in pet_shop[pets]
# if customer[:price]
#   if pet_shop[:pets][:price] = customer_cash_before - customer_cash_after
#     return customer_cash_before - customer_cash_after pet[:price]

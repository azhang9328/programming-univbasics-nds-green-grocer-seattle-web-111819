def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  oldCartIndex = 0
  collectionItem = nil
  while oldCartIndex < collection.length do
    if collection[oldCartIndex][:item] == name
     return collection[oldCartIndex]
    else
      oldCartIndex += 1 
    end  
  end
  return
end

def consolidate_cart(cart)
  newCart = []
  oldCartIndex = 0
  while oldCartIndex < cart.length do 
    newCartIndex = 0
    puts newCart.length
    if newCart.length == 0
      newCart.push(cart[oldCartIndex])
      newCart[0][:count] = 1
      oldCartIndex += 1
    end
    while newCartIndex < newCart.length do
      puts "inner loop"
      puts newCart
      puts cart[oldCartIndex][:item]
      if newCart.length > 0 && newCart[newCartIndex][:item] == cart[oldCartIndex][:item]
        newCart[newCartIndex][:count] += 1
        break
      end
      newCartIndex += 1 
    end 
    if newCart.length > 0 && newCartIndex == newCart.length
        newCart.push(cart[oldCartIndex])
        newCart[newCart.length - 1][:count] = 1
    end
    oldCartIndex += 1
  end 
  return newCart

end 

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupCart = []
  consolCartIndex = 0 
  while consolCartIndex < cart.length do 
    if cart[consolCartIndex][:item] == coupons[consolCartIndex][:item]
    
    end  
  consolCartIndex += 1   
  end 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end

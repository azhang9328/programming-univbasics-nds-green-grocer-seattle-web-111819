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
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  oldCartIndex = 0
  newCart = []
  while oldCartIndex < cart.length do 
    newCartIndex = 0 
    puts newCart.length 
    if newCart.length == 0 
      newCart.push(cart[oldCartIndex])
      newCart[0][:count] = 1 
      oldCartIndex += 1 
    end 
    if newCart[newCartIndex][:item] == cart[oldCartIndex]
      puts "add item count"
      newCart[newCartIndex][:count] += 1 
    elsif newCartIndex == newCart.length 
      puts "new item count"
      newCart.push(cart[oldCartIndex])
      newCart[newCart.length - 1][:count] = 1 
    else 
      until newCart[newCartIndex][:item]  == cart[oldCartIndex][:item]
      puts newCart
      newCartIndex += 1 
    end
    end 
  end   
  return newCart
  

end 

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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

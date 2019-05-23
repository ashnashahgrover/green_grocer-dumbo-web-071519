require 'pry'

def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item_hash|
    item_hash.each do |item_name, info_hash|
      new_hash[item_name] ||= info_hash
      new_hash[item_name][:count] ||= 0
      new_hash[item_name][:count] += 1 
    end
  end 
  new_hash
end

def apply_coupons(cart, coupons)
end 



def apply_clearance(cart)
  cart.each_with_object({}) do |(key, value), hash|
    hash ||= cart 
    if value[:clearance] == true 
      hash[key][:price].to_f *= 0.8
    end 
  end 
end

def checkout(cart, coupons)
  # code here
end

Product.seed do |s|
  s.id = 1
  s.name = "Banana"
  s.price = 0.29
end

Product.seed do |s|
  s.id = 2
  s.name = "Apple"
  s.price = 0.49
end

Product.seed do |s|
  s.id = 3
  s.name = "Strawberry"
  s.price = 0.10
end
Product.seed(:id, 
  { id: 1, name: "Banana", price: 0.29 },
  { id: 2, name: "Apple", price: 0.49 },
  { id: 3, name: "Strawberry", price: 0.10 },
  { id: 4, name: "Bag of Blueberries", price: 1.99 },

)
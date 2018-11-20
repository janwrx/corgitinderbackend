corgi_attributes = [
  {
  name: "Bob",
  age: 3,
  enjoys: "Chasing squirrels"
  },
  {
    name: "Eric",
    age: 5,
    enjoys: "Kombucha"
  },
  {
    name: "Ann",
    age: 1,
    enjoys: "Milk"
  }
]

corgi_attributes.each do |attributes|
  Corgi.create(attributes)
end

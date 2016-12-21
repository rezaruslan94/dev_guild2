# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create(
  [
    {name: 'Electronics'},
    {name: 'Fashion'},
    {name: 'Food & Beverage'},
    {name: 'Office Supplies'},
    {name: 'Household Appliances'}
  ]
)

products = Product.create(
  [
    {name: 'MacBook Air', price: 1000.0, category_id: Category.find_by(name: 'Electronics').id},
    {name: 'Asus ROG', price: 900.0, category_id: Category.find_by(name: 'Electronics').id},
    {name: 'Lenovo Thinkpad', price: 800.0, category_id: Category.find_by(name: 'Electronics').id},
    {name: 'Shoes', price: 100.0, category_id: Category.find_by(name: 'Fashion').id},
    {name: 'T-Shirt', price: 80.0, category_id: Category.find_by(name: 'Fashion').id},
    {name: 'Shorts', price: 60.0, category_id: Category.find_by(name: 'Fashion').id},
    {name: 'Snakcs', price: 10.0, category_id: Category.find_by(name: 'Food & Beverage').id},
    {name: 'Soft Drinks', price: 5.0, category_id: Category.find_by(name: 'Food & Beverage').id},
    {name: 'Supplements', price: 5.0, category_id: Category.find_by(name: 'Food & Beverage').id},
    {name: 'A4 Paper', price: 20.0, category_id: Category.find_by(name: 'Office Supplies').id},
    {name: 'Printer', price: 100.0, category_id: Category.find_by(name: 'Office Supplies').id},
    {name: 'LCD Projector', price: 200.0, category_id: Category.find_by(name: 'Office Supplies').id},
    {name: 'Air Conditioner', price: 100.0, category_id: Category.find_by(name: 'Household Appliances').id},
    {name: 'Refrigerator', price: 150.0, category_id: Category.find_by(name: 'Household Appliances').id},
    {name: 'Water Dispenser', price: 50.0, category_id: Category.find_by(name: 'Household Appliances').id}
  ]
)

customers = Customer.create(
  [
    {name: 'Customer 1', address: 'Jakarta'},
    {name: 'Customer 2', address: 'Jakarta'},
    {name: 'Customer 3', address: 'Bogor'},
    {name: 'Customer 4', address: 'Bogor'},
    {name: 'Customer 5', address: 'Depok'},
    {name: 'Customer 6', address: 'Depok'},
    {name: 'Customer 7', address: 'Tangerang'},
    {name: 'Customer 8', address: 'Tangerang'},
    {name: 'Customer 9', address: 'Bekasi'},
    {name: 'Customer 10', address: 'Bekasi'}
  ]
)

orders = Order.create(
  [
    {number: 'ORD0001', order_date: Date.new(2016, 12, 10), customer_id: Customer.find_by(name: 'Customer 10').id},
    {number: 'ORD0002', order_date: Date.new(2016, 12, 10), customer_id: Customer.find_by(name: 'Customer 1').id},
    {number: 'ORD0003', order_date: Date.new(2016, 12, 10), customer_id: Customer.find_by(name: 'Customer 9').id},
    {number: 'ORD0004', order_date: Date.new(2016, 12, 10), customer_id: Customer.find_by(name: 'Customer 8').id},
    {number: 'ORD0005', order_date: Date.new(2016, 12, 11), customer_id: Customer.find_by(name: 'Customer 2').id},
    {number: 'ORD0006', order_date: Date.new(2016, 12, 11), customer_id: Customer.find_by(name: 'Customer 7').id},
    {number: 'ORD0007', order_date: Date.new(2016, 12, 11), customer_id: Customer.find_by(name: 'Customer 3').id},
    {number: 'ORD0008', order_date: Date.new(2016, 12, 12), customer_id: Customer.find_by(name: 'Customer 6').id},
    {number: 'ORD0009', order_date: Date.new(2016, 12, 12), customer_id: Customer.find_by(name: 'Customer 4').id},
    {number: 'ORD0010', order_date: Date.new(2016, 12, 12), customer_id: Customer.find_by(name: 'Customer 5').id},
  ]
)

product_ids = [5, 6, 4, 7, 3, 8, 2, 9, 1, 10]
quantities = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
i = 0
orders.each do |order|
  i = i + 1
  OrderItem.create(order_id: order.id, product_id: Product.find_by(id: product_ids[i-1]).id, qty: quantities[i-1])
  OrderItem.create(order_id: order.id, product_id: Product.find_by(id: product_ids[10-i-1]).id, qty: quantities[10-i-1])
end
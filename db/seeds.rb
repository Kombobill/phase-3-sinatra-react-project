puts "🌱 Seeding ..."

TodoCategory.destroy_all
TodoCategory.reset_pk_sequence
TodoCategory.create(name: "Work")
TodoCategory.create(name: "Home")
TodoCategory.create(name: "Finance")

Todo.destroy_all
Todo.reset_pk_sequence
Todo.create(title: "edit report", todo_category_id: 1)
Todo.create(title: "finish project", todo_category_id: 1)
Todo.create(title: "walk the dog", todo_category_id: 2)
Todo.create(title: "do laundry", todo_category_id: 2)
Todo.create(title: "go grocery shopping", todo_category_id: 2)
Todo.create(title: "pay electricity bill", todo_category_id: 3)

ShoppingCategory.destroy_all
ShoppingCategory.reset_pk_sequence
ShoppingCategory.create(name: "Fruit/Veg")
ShoppingCategory.create(name: "Frozen")
ShoppingCategory.create(name: "Diary")
ShoppingCategory.create(name: "Bakery")
ShoppingCategory.create(name: "Cupboard")
ShoppingCategory.create(name: "Toiletries")
ShoppingCategory.create(name: "Household")

ShoppingItem.destroy_all
ShoppingItem.reset_pk_sequence
ShoppingItem.create(title: "Cheese", shopping_category_id: 3, price: 1.20, amount: 1)
ShoppingItem.create(title: "Milk", shopping_category_id: 3, price: 0.90, amount: 1)
ShoppingItem.create(title: "Potatoes", shopping_category_id: 1, price: 0.95, amount: 3)
ShoppingItem.create(title: "Mushrooms", shopping_category_id: 1, price: 0.90, amount: 1)
ShoppingItem.create(title: "Bread Rolls", shopping_category_id: 4, price: 1.10, amount: 2)
ShoppingItem.create(title: "Toothpaste", shopping_category_id: 6, price: 1.45, amount: 1)

puts "✅ Done seeding!"

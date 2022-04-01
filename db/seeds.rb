puts "🌱 Seeding ..."

User.destroy_all
User.reset_pk_sequence
User.create(username: "EllenRipley", email_address: "ellen.ripley@protonmail.com", password: "1G4!cV5@XY8aY7S")
User.create(username: "SarahConnor", email_address: "sarah.connor@protonmail.com", password: "F&59hvydM%r8yAN")
User.create(username: "test", email_address: "test@email.com", password: "123")

TodoCategory.destroy_all
TodoCategory.reset_pk_sequence
TodoCategory.create(name: "Work")
TodoCategory.create(name: "Home")
TodoCategory.create(name: "Finance")

Todo.destroy_all
Todo.reset_pk_sequence
Todo.create(title: "edit report", todo_category_id: 1, completed: false, user_id: 1)
Todo.create(title: "finish project", todo_category_id: 1, completed: false, user_id: 1)
Todo.create(title: "schedule meetings", todo_category_id: 1, completed: false, user_id: 1)
Todo.create(title: "walk the dog", todo_category_id: 2, completed: false, user_id: 1)
Todo.create(title: "do laundry", todo_category_id: 2, completed: false, user_id: 1)
Todo.create(title: "go grocery shopping", todo_category_id: 2, completed: false, user_id: 1)
Todo.create(title: "pay electricity bill", todo_category_id: 3, completed: false, user_id: 1)
Todo.create(title: "pay water bill", todo_category_id: 3, completed: false, user_id: 1)
Todo.create(title: "call bank", todo_category_id: 3, completed: false, user_id: 1)

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
ShoppingItem.create(title: "Potatoes", shopping_category_id: 1, price: 1.15, amount: 3, user_id: 1)
ShoppingItem.create(title: "Mushrooms", shopping_category_id: 1, price: 1.00, amount: 1, user_id: 1)
ShoppingItem.create(title: "Pizza", shopping_category_id: 2, price: 1.00, amount: 1, user_id: 1)
ShoppingItem.create(title: "Butter", shopping_category_id: 3, price: 1.60, amount: 1, user_id: 1)
ShoppingItem.create(title: "Milk", shopping_category_id: 3, price: 0.95, amount: 2, user_id: 1)
ShoppingItem.create(title: "Bread Rolls", shopping_category_id: 4, price: 1.00, amount: 2, user_id: 1)
ShoppingItem.create(title: "Doughnuts", shopping_category_id: 4, price: 1.20, amount: 2, user_id: 1)
ShoppingItem.create(title: "Coffee", shopping_category_id: 5, price: 3.50, amount: 2, user_id: 1)
ShoppingItem.create(title: "Sugar", shopping_category_id: 5, price: 80.00, amount: 1, user_id: 1)
ShoppingItem.create(title: "Toothpaste", shopping_category_id: 6, price: 1.45, amount: 1, user_id: 1)
ShoppingItem.create(title: "Bin Bags", shopping_category_id: 7, price: 2.00, amount: 1, user_id: 1)
ShoppingItem.create(title: "Laundry Detergent", shopping_category_id: 7, price: 4.55, amount: 1, user_id: 1)

puts "✅ Done seeding!"

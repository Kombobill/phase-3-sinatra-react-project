require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'



   configure do
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, SecureRandom.hex(24)
  end

  # configure do
  #   set :public_folder, 'public'
  # end  

end


#   post '/login' do
#     user = User.find_by_email_address(params[:email_address])
#     if user&.authenticate(params[:password])
#       session[:user_id] = user.id
#       user.to_json(include: :todos)
#     else
#       {error: "incorrect login credentials"}.to_json
#     end
#   end



#   get '/users/:id' do
#     user = User.find_by_id(params[:id])
#     user.to_json
#   end

#   get '/users/:id/todos' do
#     user = User.find_by_id(params[:id])
#     user.todos.to_json
#   end

#   delete '/users/:id' do
#     user = User.find_by_id(params[:id])
#     user.destroy
#     user.to_json
#   end

#   post '/users' do
#     user = User.create(
#       username: params[:name],
#       email_address: params[:email_address],
#       password: params[:password],
#       budget: params[:budeget]
#     )
#     user.to_json
#   end





#   get '/todos/:id' do
#     todo = Todo.find(params[:id])
#     todo.to_json
#   end

#   delete '/todos/:id' do
#     todo = Todo.find(params[:id])
#     # if found do this, otherwise 
#     todo.destroy
#     todo.to_json
#   end

#   post '/todos' do
 
#     # find user based on params email
#     user = User.find_by(email_address: params[:email_address])
#     if user

#       todo = user.todos.create(
#         title: params[:title],
#         todo_category_id: params[:todo_category_id],
#         completed: false
#       )
#       todo.to_json
#     else
#     {
#       error: "user not found"
#     }.to_json

#     end
#   end




#   get '/todo_categories/:id' do
#     todo_category = TodoCategory.find(params[:id])
#     todo_category.to_json
#   end





#   get '/shopping_items' do
#     shopping_items = ShoppingItem.all
#     shopping_items.to_json
#   end

#   get '/shopping_items/:id' do
#     shopping_item = ShoppingItem.find(params[:id])
#     shopping_item.to_json
#   end

#   delete '/shopping_items/:id' do
#     shopping_item = ShoppingItem.find(params[:id])
#     shopping_item.destroy
#     shopping_item.to_json
#   end

#   post '/shopping_items' do
#     shopping_item = ShoppingItem.create(
#       title: params[:title],
#       shopping_category_id: params[:shopping_category_id],
#       price: params[:price],
#       amount: params[:amount]
#     )
#     shopping_item.to_json
#   end









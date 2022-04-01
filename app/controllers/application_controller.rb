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


#   post '/shopping_items' do
#     shopping_item = ShoppingItem.create(
#       title: params[:title],
#       shopping_category_id: params[:shopping_category_id],
#       price: params[:price],
#       amount: params[:amount]
#     )
#     shopping_item.to_json
#   end
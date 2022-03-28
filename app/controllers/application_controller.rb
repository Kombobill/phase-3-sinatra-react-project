require './config/environment'


class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    set :public_folder, 'public'
  end

  get '/todos' do
    todos = Todo.all
    todos.to_json
  end

  get '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.to_json
  end

  delete '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.destroy
    todo.to_json
  end

  post '/todos' do
    todo = Todo.create(
      title: params[:title],
      todo_category_id: params[:todo_category_id],
      completed: false
    )
    todo.to_json
  end

  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.update(
      title: params[:title],
      todo_category_id: params[:todo_category_id],
      completed: params[:completed]
    )
    todo.to_json
  end





  get '/shopping_items' do
    shopping_items = ShoppingItem.all
    shopping_items.to_json
  end

  get '/shopping_items/:id' do
    shopping_item = ShoppingItem.find(params[:id])
    shopping_item.to_json
  end

  delete '/shopping_items/:id' do
    shopping_item = ShoppingItem.find(params[:id])
    shopping_item.destroy
    shopping_item.to_json
  end

  post '/shopping_items' do
    shopping_item = ShoppingItem.create(
      title: params[:title],
      shopping_category_id: params[:shopping_category_id],
      price: params[:price],
      amount: params[:amount]
    )
    shopping_item.to_json
  end

  patch '/shopping_items/:id' do
    shopping_item = ShoppingItem.find(params[:id])
    shopping_item.update(
      title: params[:title],
      shopping_category_id: params[:todo_category_id],
      price: params[:price],
      amount: params[:amount]
    )
    shopping_item.to_json
  end




  get '/todo_categories' do
    todo_categories = TodoCategory.all
    todo_categories.to_json
  end

  get '/todo_categories/:id' do
    todo_category = TodoCategory.find(params[:id])
    todo_category.to_json
  end

  delete '/todo_categories/:id' do
    todo_category = TodoCategory.find(params[:id])
    todo_category.destroy
    todo_category.to_json
  end

  post '/todo_categories' do
    todo_category = TodoCategory.create(
      name: params[:name]
    )
    todo_category.to_json
  end

  patch '/todo_categories/:id' do
    todo_category = TodoCategory.find(params[:id])
    todo_category.update(
      name: params[:name]
    )
    todo_category.to_json
  end

  get '/shopping_categories' do
    shopping_categories = ShoppingCategory.all
    shopping_categories.to_json
  end

  get '/shopping_categories/:id' do
    shopping_category = ShoppingCategory.find(params[:id])
    shopping_category.to_json
  end

  delete '/shopping_categories/:id' do
    shopping_category = ShoppingCategory.find(params[:id])
    shopping_category.destroy
    shopping_category.to_json
  end
  
  post '/shopping_categories' do
    shopping_category = ShoppingCategory.create(
      name: params[:name]
    )
    shopping_category.to_json
  end

  patch '/shopping_categories/:id' do
    shopping_category = ShoppingCategory.find(params[:id])
    shopping_category.update(
      name: params[:name]
    )
    shopping_category.to_json
  end

  configure do
    set :public_folder, 'public'
  end  

end

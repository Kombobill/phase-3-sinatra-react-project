require './config/environment'

class ShoppingItems < ApplicationController

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

end
class ShoppingItemsController < ApplicationController

  # GET: /shopping_items
  get '/shopping_items' do
    ShoppingItem.all.to_json
  end

  # POST: /shopping_items
  post '/shopping_items' do
    shopping_item = ShoppingItem.create(
      title: params[:title],
      shopping_category_id: params[:shopping_category_id],
      price: params[:price],
      amount: params[:amount]
    )
    shopping_item.to_json
  end

  # GET: /shopping_items/5
  get '/shopping_items/:id' do
    if ShoppingItem.find_by_id(params[:id])
      ShoppingItem.find_by_id(params[:id]).to_json
    else
      {error: "Record not found with id #{params['id']}"}.to_json
    end
  end

  # PATCH: /shopping_items/5
  patch '/shopping_items/:id' do
    shopping_item = ShoppingItem.find_by_id(params[:id])
    shopping_item.update(
      title: params[:title],
      shopping_category_id: params[:todo_category_id],
      price: params[:price],
      amount: params[:amount]
    )
    shopping_item.to_json
  end

  # DELETE: /shopping_items/5/delete
  delete '/shopping_items/:id' do
    shopping_item = ShoppingItem.find_by_id(params[:id])
    if shopping_item
      shopping_item.destroy
      {message: "Record successfully destroyed"}.to_json
    else
      {error: "Record not found with id #{params['id']}"}.to_json
    end
  end

end












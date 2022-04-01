class ShoppingCategoriesController < ApplicationController

  # GET: /shopping_categories
  get '/shopping_categories' do
    shopping_categories = ShoppingCategory.all
    shopping_categories.to_json
  end

  # POST: /shopping_categories
  post '/shopping_categories' do
    shopping_category = ShoppingCategory.create(name: params[:name])
    shopping_category.to_json
  end

  # GET: /shopping_categories/5
  get '/shopping_categories/:id' do
    shopping_category = ShoppingCategory.find_by_id(params[:id])
    shopping_category.to_json
  end

  # PATCH: /shopping_categories/5
  patch '/shopping_categories/:id' do
    shopping_category = ShoppingCategory.find_by_id(params[:id])
    shopping_category.update(
      name: params[:name]
    )
    shopping_category.to_json
  end

  # DELETE: /shopping_categories/5/delete
  delete '/shopping_categories/:id' do
    shopping_category = ShoppingCategory.find_by_id(params[:id])
    shopping_category.destroy
    shopping_category.to_json
  end
end
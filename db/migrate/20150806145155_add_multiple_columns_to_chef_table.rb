class AddMultipleColumnsToChefTable < ActiveRecord::Migration
    
  def change
    add_column :chefs, :first_name, :string
    add_column :chefs, :last_name, :string
    add_column :chefs, :restaurant, :string
    add_column :chefs, :location, :string
    add_column :chefs, :speciality, :string
    add_column :chefs, :favourites, :string
    add_column :chefs, :achievements, :string
  end 

end

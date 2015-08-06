class AddDobColumnToChefTable < ActiveRecord::Migration

  def change
    add_column :chefs, :dob, :string
  end    

end

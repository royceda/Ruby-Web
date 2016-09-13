class TableCategories < ActiveRecord::Migration
  def change
    create_table :categories
    add_column :categories, :name, :string
  end
end

# rails generate migration TableCategories
# rake db:migrate

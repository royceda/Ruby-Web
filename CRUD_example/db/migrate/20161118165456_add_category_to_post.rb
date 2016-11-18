class AddCategoryToPost < ActiveRecord::Migration[5.0]
  def change
    #add a relation between post and category
    add_reference  :posts, :category, foreign_key: true
  end
end

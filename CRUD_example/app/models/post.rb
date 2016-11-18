class Post < ApplicationRecord

  belongs_to :category

  #include PostValidation
  validates :name, presence: true
  validates :category_id, presence: true

end

class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence:{
    massage: "Title must be not null"
  }


  validates :title, uniqueness:{
    message: "this title is already given !"
  }


  scope :prog, -> {where(category_id: 3)}
end

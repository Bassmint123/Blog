class Article < ApplicationRecord
  # "has_many" creates the comments association to Article
  # If you delete an article, its associated comments will also need to be deleted, otherwise 
  # they would simply occupy space in the database. "dependent" cleans up the db with any remaining
  # associations  

  has_many :comments, dependent: :destroy    
  validates :title, presence: true,
                    length: { minimum: 5 }   # Validate the title is at least 5 characters long
end

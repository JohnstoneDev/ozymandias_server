# Book Class that will be used to create author table with ActiveRecord

class Book < ActiveRecord::Base 
    belongs_to :author
    has_many :reviews
end 
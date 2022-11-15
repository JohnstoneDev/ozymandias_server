# Review Class that will be used to create author table with ActiveRecord

class Review < ActiveRecord::Base 
    belongs_to :book 
end 
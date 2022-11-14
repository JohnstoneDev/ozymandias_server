# Author Class that will be used to create author table with ActiveRecord

class Author < ActiveRecord::Base 
    has_many :books
end 
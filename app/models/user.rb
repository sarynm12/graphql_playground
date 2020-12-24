class User < ApplicationRecord
  validates_presence_of :name, :email
  has_many :posts
end

#https://mattboldt.com/2019/01/07/rails-and-graphql/

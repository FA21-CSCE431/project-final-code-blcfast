class User < ApplicationRecord
  validates :username, :admin: true
end

class User < ActiveRecord::Base
  #TODO: has_many :item_history, :item_property_history
  has_secure_password

  validates :name, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: true
  validates :password, length: { minimum: 6, maximum: 255 }
end

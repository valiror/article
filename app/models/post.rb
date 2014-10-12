class Post < ActiveRecord::Base
  attr_accessible :email, :mobile_no, :post_name, :user_name
validates :post_name, :user_name, :email, presence: true
validates :mobile_no, :length => { minimum: 10, maximum: 10 } 
validates :post_name, :length => { minimum:3, maximum:50 }
validates :user_name, :length => { minimum:2, maximum:15}

validates :mobile_no, presence: true, numericality: { only_integer: true }
has_one :user

end

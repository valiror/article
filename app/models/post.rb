class Post < ActiveRecord::Base
  attr_accessible :email, :mobile_no, :post_name, :user_name
end

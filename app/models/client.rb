class Client < ActiveRecord::Base
  attr_accessible :email, :login, :name
end

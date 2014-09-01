class User < ActiveRecord::Base
  def restaurants
    if self.age > 20
      Restaurant.all
    else
      Restaurant.where( serves_alcohol: false )
    end
  end
end
class User < ActiveRecord::Base

  def restaurants
    if self.age > 20
      Restaurant.all
    else
      Restaurant.where( serves_alcohol: false )
    end
  end

  def rides
    Ride.all.select{|r| r.min_height.to_i < self.height } 
  end

end
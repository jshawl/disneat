class User < ActiveRecord::Base

  validate :height_in_inches

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

  def height_in_inches
    if self.height.to_s.match(/^\d+$/) 
      errors.add(:height, "Height must be in inches.")
    end
  end
end
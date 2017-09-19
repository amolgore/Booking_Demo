class FlatBooking < ApplicationRecord

  def flat_rate
    self.area.to_i * self.base_price + self.agreement_amount
  end
end

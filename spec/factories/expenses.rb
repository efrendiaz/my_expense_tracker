FactoryGirl.define do
  factory :expense do
    name "Water"
    currency "$"
    amount 100000
    frequency "Monthly"
    payment_date Time.now.to_date
  end

end

FactoryGirl.define do
  factory :expense do
    name "Water"
    currency "$"
    amount 100000
    frequency "Monthly"
  end

end

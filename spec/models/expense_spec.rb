require 'rails_helper'

RSpec.describe Expense, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:currency) }
  it { should validate_presence_of(:frequency) }
  it { should validate_numericality_of(:amount) }
end

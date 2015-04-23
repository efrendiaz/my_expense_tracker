require "rails_helper"
describe "expenses list", type: :feature do
  describe "see previous expenses" do
    let!(:expense_1) { FactoryGirl.create(:expense) }
    let!(:expense_2) { FactoryGirl.create(:expense) }

    it "displays a list of all expenses" do
      visit "/"
      expect(page).to have_content("Expense Tracker")
      expect(page).to have_content("Expenses")
      within('table.expenses') do
        expect(page).to have_content(expense_1.id)
        expect(page).to have_content(expense_2.id)
      end
    end
  end
end

describe "expenses new", type: :feature do
  describe "creating a new expense" do
    it "successfully creates an expense " do
      visit "/expenses/new"
      expect(page).to have_content("Create New Expense")
      fill_in 'Name', with: 'My test'
      fill_in 'Amount', with: 100000
      fill_in 'Payment date', with: Time.now.to_date
      select "BsF", :from => "expense_currency"
      select "Bimonthly", :from => "expense_frequency"
      click_button 'Save'
      expect(page).to have_content("Expense was successfully created.")
    end

    it "displays errors if required fields are not present" do
      visit "/expenses/new"
      expect(page).to have_content("Create New Expense")
      fill_in 'Amount', with: 100000
      select "BsF", :from => "expense_currency"
      select "Bimonthly", :from => "expense_frequency"
      click_button 'Save'
      expect(page).to have_content("can't be blank")
    end
  end
end

describe "expenses edit", type: :feature do
  let!(:expense_1) { FactoryGirl.create(:expense) }
  describe "update anexpense" do
    it "successfully updates an expense " do
      visit "/expenses/#{expense_1.id}/edit"
      expect(page).to have_content("Edit Expense")
      fill_in 'Name', with: 'My test'
      click_button 'Save'
      expect(page).to have_content("Expense was successfully updated.")
      expect(page).to have_content("My test")
    end

    it "displays errors if required fields are not present" do
      visit "/expenses/#{expense_1.id}/edit"
      fill_in 'Amount', with: ""
      click_button 'Save'
      expect(page).to have_content("can't be blank")
    end
  end
end





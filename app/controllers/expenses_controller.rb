class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all.paginate(:page => params[:page])
  end

  def new
    @expense = Expense.new
  end
end

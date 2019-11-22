class LoansController < ApplicationController

  def my_loans
    @my_loans = current_user.items
    @my_borrows = current_user.loans
  end

  def show
    @loan = Loan.find(params[:id])
    authorize @loan
  end

  def new
    @item = Item.find(params[:item_id])
    @loan = Loan.new
    authorize @loan
  end

  def create
    @loan = Loan.new(loan_params)
    @item = Item.find(params[:item_id])
    @loan.item = @item
    @loan.user = current_user
    @loan.save
    authorize @loan
    redirect_to items_path
  end

  def edit
    @loan = Loan.find(params[:id])
  end

  def update
    @loan = Loan.find(params[:id])
    @loan.update(loan_params)
    redirect_to loan_path(@loan)
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    redirect_to loans_path
  end

  private

  def loan_params
    params.require(:loan).permit(:message, :start_date, :end_date)
  end

end

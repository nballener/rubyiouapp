class TransactionsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    to = User.find(transaction_params[:to])
    @transaction = @user.transactions.create(transaction_params)
    redirect_to user_path(@user)
  end

  private
    def transaction_params
      params.require(:transaction).permit(:to, :amount)
    end
end

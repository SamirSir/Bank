class HomeController < ApplicationController
  def index
  end

  def accounts
  	@users = User.all
  	@deposits = Deposit.all
  	@loans = Loan.all
  end

  def show
  	@user = User.find(params[:id])
  	@deposits = Deposit.all
  	@loans = Loan.all
  	# @calculate = Calculate.new(Loan.all, Deposit.all, current_user)
  end

  
end

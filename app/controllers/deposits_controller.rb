class DepositsController < ApplicationController

	def new
		@deposit = Deposit.new
	end

	def create 
		@deposit = Deposit.new(params.require(:deposit).permit(:debit))
		@deposit.user = current_user
		@deposit.save
		redirect_to account_path(current_user)
	end

end

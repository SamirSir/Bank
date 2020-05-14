class LoansController < ApplicationController

	before_action :authenticate_user!

	def index

	end

	def new
		@loan =Loan.new
	end

	def create
		@loan =Loan.new(set_params)
		@loan.user = current_user
		@loan.save
		redirect_to account_path(current_user)
	end

	def show
	end

	private

	def set_params
		params.require(:loan).permit(:credit)
	end
end

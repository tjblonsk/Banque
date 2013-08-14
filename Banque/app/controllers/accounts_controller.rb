class AccountsController < ApplicationController

  def index
    @accounts = Account.all

    respond_to do |format|
      format.html
      format.json {render json: @accounts}
    end
  end


  def deposit
    respond_to do |format|
      format.html
      format.js {}
    end
  end


  def deposit_amount
    @account = Account.find(params[:id])
    amount_to_add = params[:amount].to_i
    @account.balance = @account.balance + amount_to_add
    @account.save
    respond_to do |format|
      format.html
      format.js {}
    end
  end


end

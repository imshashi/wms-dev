class ChargesController < ApplicationController

  def new
    if params[:amount].present?
      @amount = params[:amount].to_f / 320.to_f
      @mobile = params[:mobile]
    else
      @amount = 0.0
      @mobile = ''
    end
  end

  def create
    # Amount in cents
    #params[:stripeAmount] = 10
    amount = params[:amount].to_i * 100

    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
    )

    # Create the charge using the customer data returned by Stripe API
    @charge = Stripe::Charge.create(
      customer: customer.id,
      amount: amount,
      description: 'Rails Stripe customer',
      currency: 'usd'
      # balance_transaction: params[:stripeBalanceTransaction]
    )

    # place more code upon successfully creating the charge
      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path
    end
end

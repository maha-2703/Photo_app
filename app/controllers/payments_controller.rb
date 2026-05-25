class PaymentsController < ApplicationController
    

  def new
    order = Razorpay::Order.create(amount: params[:amount], currency: "INR")
    @order_id = order.id
    @amount = params[:amount]
    @plan = params[:plan]
  end

  def create

  Payment.create(
    user_id: current_user.id,
    order_id: params[:order_id],
    payment_id: params[:payment_id],
    amount: params[:amount],
    status: params[:status]
  )

  current_user.update(premium: true)

  render json: { success: true }

end


end

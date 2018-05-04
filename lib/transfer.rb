require 'pry'
class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @amount = amount
    @receiver = receiver
    @sender = sender
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if valid? == true
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
        # if @status == "complete"
        #
        # end
    else
      "Transaction rejected. Please check your account balance."
    end
  end

end

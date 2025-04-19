def display_balance(account_balance)
  # return_value
  begin
    if account_balance.negative?
      return_value = "Balance: -$#{account_balance.abs}"
    elsif account_balance.positive?
      return_value = "Balance: $#{account_balance}"
    end
  rescue StandardError
    nil
  else
    return_value
  end
end

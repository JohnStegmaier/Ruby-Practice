def display_balance(account_balance)
  if account_balance < 0
    "Balance: -$#{account_balance.abs}"
  elsif account_balance > 0
    "Balance: $#{account_balance}"
  end
end
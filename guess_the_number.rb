require './guess_the_number_methods'

# limit = take_limit_from_user
# secret_number = init_random(limit) 
secret_number = init_random(take_limit_from_user)

loop do
  guess = take_input

  res = evaluate_guess(guess, secret_number)
  if res == 0
    congratulate
    break
  else
    hint(res)
  end
end

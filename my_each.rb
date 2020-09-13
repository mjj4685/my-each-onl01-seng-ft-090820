def my_each(drinks)
  counter = 0
  while counter < drinks.length
    yield(drinks[counter])
    counter += 1
  end
  drinks
end

    
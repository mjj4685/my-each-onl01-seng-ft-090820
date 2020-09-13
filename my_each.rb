list = ["ab", "cd", "ef"]

def my_each(array)
  drinks = 0
  while drinks < array.length

    yield(array[drinks])
    drinks = drinks + 1
  end
end

my_each(list) {|i| "#{i} are you going to drink that?"}


def hello(array)
  i = 0
  basket = []
  while i < array.length
    basket << yield(array[i])
    i += 1
  end
  basket
end

hello(list) {|i| "Yes #{i} go get your own!"}

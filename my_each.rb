list = ["ab", "cd", "ef"]

def my_each(array)
  counter = 0
  while counter < array.length

    yield(array[counter])
    counter += 1
  end
end

my_each(list) {|i| puts "#{i} are you going to drink that?"}


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

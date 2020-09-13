list = ["ab", "cd", "ef"]

def my_each(array)
  i = 0
  while i < array.length
# The "while" method will always return a value of => nil"
    yield(array[i])
    i = i + 1
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

class OurHash
  define_method(:initialize) do
    @keyArray = []
    @valueArray = []
  end
  define_method(:OurStore) do |key, value|
    @keyArray.push(key)
    @valueArray.push(value)
  end
  define_method(:OurFetch) do |key|
    index = @keyArray.index(key)
    @valueArray[index]
  end
  define_method(:OurHasKey?) do |key|
    @keyArray.include?(key)
  end
  define_method(:OurHasValue?) do |value|
    @valueArray.include?(value)
  end
  define_method(:OurLength) do
    @keyArray.length
  end
end

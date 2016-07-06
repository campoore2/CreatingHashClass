require('rspec')
require('hash')

describe(OurHash) do
  describe('#OurStore') do
    it('stores a new key value pair in the hash') do
      test_hash = OurHash.new()
      expect(test_hash.OurStore("hello", "world")).to(eq(["world"]))
    end
  end
  describe('#OurFetch') do
    it('fetches the value of the designated key') do
      test_hash = OurHash.new()
      test_hash.OurStore("hello", "world")
      expect(test_hash.OurFetch("hello")).to(eq("world"))
    end
  end
  describe('#OurHasKey?') do
    it('determines if the key array has the key') do
      test_hash = OurHash.new()
      test_hash.OurStore("hello", "world")
      expect(test_hash.OurHasKey?("hello")).to(eq(true))
    end
  end
  describe('#OurHasKey?') do
    it('determines if the key array has the key') do
      test_hash = OurHash.new()
      test_hash.OurStore("hello", "world")
      expect(test_hash.OurHasKey?("hey")).to(eq(false))
    end
  end
  describe('#OurHasValue?') do
    it('determines if the value array has the value') do
      test_hash = OurHash.new()
      test_hash.OurStore("hello", "world")
      expect(test_hash.OurHasValue?("world")).to(eq(true))
    end
  end
  describe('#OurHasValue?') do
    it('determines if the value array has the value') do
      test_hash = OurHash.new()
      test_hash.OurStore("hello", "world")
      expect(test_hash.OurHasValue?("werd")).to(eq(false))
    end
  end
end

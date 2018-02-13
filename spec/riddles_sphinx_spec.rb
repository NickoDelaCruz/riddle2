require('rspec')
require('riddles_sphinx')
require('pry')

describe('get_answer') do
  it("checks if the answer is correct") do
 success = Riddles.new("car", "dog")
 expect(success.questions).to(eq("Success"))
 end
 it("checks if the answer is incorrect") do
success = Riddles.new("bike", "cat")
expect(success.questions).to(eq("Try Again"))
end

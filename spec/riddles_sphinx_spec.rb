require('rspec')
require('riddles_sphinx')
require('pry')

describe('get_answer') do
  it("when the question is asked, user must answer") do
    answer = Riddles.new("It goes vroom ,when you use it you feel like Fred flint stone")
    expect(answer.get_answer("It goes vroom ,when you use it you feel like Fred flint stone")).to(eq("car"))
   end
end

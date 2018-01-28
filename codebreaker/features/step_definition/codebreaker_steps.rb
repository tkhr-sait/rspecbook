
class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def getOutput
  @output ||= Output.new
end

Given("私はまだ遊んでいない") do
end

When("私は新しいゲームを開始する") do
  game = Codebreaker::Game.new(getOutput)
  game.start
end

Then("私は {string} を見ることができる") do |string|
  expect(getOutput.messages).to include(string)
end

Given("暗号値は{string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("推測値は{string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("マークは{string}となる") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end



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
  game.start('1234')
end

Then("私は {string} を見ることができる") do |string|
  expect(getOutput.messages).to include(string)
end

Given("暗号値は{string}") do |string|
  @game = Codebreaker::Game.new(getOutput)
  @game.start(string)
end

When("推測値は{string}") do |string|
  @game.guess(string)
end

Then("マークは{string}となる") do |string|
  expect(getOutput.messages).to include(string)
end


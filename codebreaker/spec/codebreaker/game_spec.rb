require 'spec_helper'

module Codebreaker
  describe Game do
    describe "#start" do
      let(:output) { double('output').as_null_object }
      let(:game)   { Game.new(output) }

      it "ようこそメッセージを表示する" do
        expect(output).to receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end

      it "最初の推測値のためのプロンプトを表示する" do
        expect(output).to receive(:puts).with('Enter guess:')
        game.start
      end
    end
  end
end

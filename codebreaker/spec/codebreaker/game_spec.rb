require 'spec_helper'

module Codebreaker
  describe Game do
    let(:output) { double('output').as_null_object }
    let(:game)   { Game.new(output) }

    describe "#start" do
      it "ようこそメッセージを表示する" do
        expect(output).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it "最初の推測値のためのプロンプトを表示する" do
        expect(output).to receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end

    describe "#guess" do
      it "マークを送信" do
        game.start('1234')
        expect(output).to receive(:puts).with('++++')
        game.guess('1234')
      end
    end
  end
end

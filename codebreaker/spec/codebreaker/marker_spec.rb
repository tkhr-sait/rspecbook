
require 'spec_helper'

module Codebreaker
  describe Marker do
    describe "#exact_match_count" do
      context "マッチなし" do
        it "０を返す" do
          marker = Marker.new('1234','5555')
          expect(marker.exact_match_count).to eq(0)
        end
      end
      context "数値と位置が１つマッチ" do
        it "１を返す" do
          marker = Marker.new('1234','1555')
          expect(marker.exact_match_count).to eq(1)
        end
      end
      context "数値のみ１つマッチ" do
        it "０を返す" do
          marker = Marker.new('1234','2555')
          expect(marker.exact_match_count).to eq(0)
        end
      end
      context "数値と位置が１つ、数値のみ１つマッチ" do
        it "１を返す" do
          marker = Marker.new('1234','1525')
          expect(marker.exact_match_count).to eq(1)
        end
      end
    end

    describe "#number_match_count" do
      context "マッチなし" do
        it "０を返す" do
          marker = Marker.new('1234','5555')
          expect(marker.number_match_count).to eq(0)
        end
      end
      context "数値と位置が１つマッチ" do
        it "０を返す" do
          marker = Marker.new('1234','1555')
          expect(marker.number_match_count).to eq(0)
        end
      end
      context "数値のみ１つマッチ" do
        it "１を返す" do
          marker = Marker.new('1234','2555')
          expect(marker.number_match_count).to eq(1)
        end
      end
      context "数値と位置が１つ、数値のみ１つマッチ" do
        it "１を返す" do
          marker = Marker.new('1234','1525')
          expect(marker.number_match_count).to eq(1)
        end
      end
      context "数値と位置が１つ、重複マッチ" do
        it "０を返す" do
          #pending("リファクタ number_match_count")
          marker = Marker.new('1234','1155')
          expect(marker.number_match_count).to eq(0)
        end
      end
    end
  end
end

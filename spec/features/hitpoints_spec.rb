require 'spec_helper'
require_relative 'web_helpers'

describe "Hitpoints" do
  context "when both players enter their names and get redirected" do

    before do
      sign_in_and_play
    end

    it "should show player 2s hitpoints" do
      expect(page).to have_content("Foo's Hitpoints")
    end

    it "should show player 1s hitpoints" do
      expect(page).to have_content("Bill's Hitpoints")
    end

  end

  context "when a player's hit points is 0 or less" do

    before do
      sign_in_and_play
    end

  end
end

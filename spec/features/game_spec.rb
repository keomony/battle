require 'game'

describe Game do
  subject(:game) {described_class.new(p1,p2)}
  let(:player) {double :player}
  let(:p1) {double :player1}
  let(:p2) {double :player2}


  context "#initialize" do
    it "should have two players" do
      expect(game.current_player).to eq(p1)
    end
  end

  context "#attack" do
    it "player should receive damage" do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end

  context "#switch" do
    it "should switch the current player" do
      game.switch
      expect(game.current_player).to eq(p2)
    end
  end

end

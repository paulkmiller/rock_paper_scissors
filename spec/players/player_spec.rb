require 'spec_helper'

describe '#compare' do

  def set_server_throw_to_paper(obj)
    allow(obj).to receive(:server_throw) { 'paper' }
  end

  it "should result in a tie if the player and server throw the same sign" do
    player = Player.new('paper')
    set_server_throw_to_paper(player)
    outcome = player.compare
    expect(outcome).to eq "The server threw paper.  You tied!"
  end

  it "should result in a loss if the player throws rock and the server throws paper" do
    player = Player.new('rock')
    set_server_throw_to_paper(player)
    outcome = player.compare
    expect(outcome).to eq "The server threw paper.  You lost!"
  end

  it "should result in a win if the player throws scissors and the server throws paper" do
    player = Player.new('scissors')
    set_server_throw_to_paper(player)
    outcome = player.compare
    expect(outcome).to eq "The server threw paper.  You won!"
  end
end

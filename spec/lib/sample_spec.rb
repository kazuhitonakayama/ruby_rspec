describe ClosedRange do
  let(:closed_range){ ClosedRange.new }

  describe '#display_range' do
    example '整数の下端と上端（下端 < 上端）を引数に渡せば、下端と上端を値にもつArrayを返す' do
      # example "should say 'Hello TDD BootCamp!'" do
      #   expect(sample.say(greeting)).to eq "Hello TDD BootCamp!"
      # end
      expect(closed_range.display_range(1,3)).to eq [1, 3]
    end
  end
end

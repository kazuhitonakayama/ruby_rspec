describe ClosedRange do
  describe '#display_range_array' do
    context '整数の下端と上端（下端 < 上端）を引数に渡す' do
      let(:closed_range) { ClosedRange.new(-1, 3) }

      example '下端として-1、上端として3を渡せば[-1,3]を返す' do
        expect(closed_range.display_range_array).to eq [-1,3]
      end
    end

    context '上端よりも下端が大きい' do
      let(:closed_range) { ClosedRange.new(3, 1) }

      example '下端として3、上端として1を渡せば InvertedRangeError を返す' do
        expect{ closed_range.display_range_array }.to raise_error(InvertedRangeError)
      end
    end

    context '下端と上端が等しい' do
      let(:closed_range) { ClosedRange.new(3, 3) }

      example '下端として3、上端として3を渡せば[3]を返す' do
        expect(closed_range.display_range_array).to eq [3]
      end
    end

    context '整数ではない値を引数に渡す' do
      let(:closed_range) { ClosedRange.new(3.4, "あ") }

      example '下端として3.4、上端として"あ"を渡せば NotIntegerValueIsProvided 例外を返す' do
        expect{ closed_range.display_range_array }.to raise_error(NotIntegerValueIsProvided)
      end
    end
  end

  describe '#is_in_range?' do
    context '区間が1点[3,3]のとき' do
      let(:closed_range) { ClosedRange.new(3, 3) }

      example '引数に3を渡す' do
        expect(closed_range.is_in_range?(3)).to eq true
      end
    end
  end
end

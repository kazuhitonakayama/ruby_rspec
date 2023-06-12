describe ClosedRange do
  describe '#display_range_array' do
    describe '整数の下端と上端（下端 < 上端）を引数に渡す' do
      example '下端として-1、上端として3を渡せば[-1,3]を返す' do
        expect(ClosedRange.new(-1, 3).display_range_array).to eq [-1,3]
      end
    end

    describe '上端よりも下端が大きい' do
      example '下端として3、上端として1を渡せば InvertedRangeError を返す' do
        expect{ ClosedRange.new(3, 1).display_range_array }.to raise_error(InvertedRangeError)
      end
    end

    describe '下端と上端が等しい' do
      example '下端として3、上端として3を渡せば[3]を返す' do
        expect(ClosedRange.new(3, 3).display_range_array).to eq [3]
      end
    end

    describe '整数ではない値を引数に渡す' do
      example '下端に"あ"、上端に"1"を渡せば NotIntegerValueIsProvided 例外を返す' do
        expect{ ClosedRange.new('あ', '1').display_range_array }.to raise_error(NotIntegerValueIsProvided)
      end

      example '下端として3.4、上端として4.4を渡せば NotIntegerValueIsProvided 例外を返す' do
        expect{ ClosedRange.new(3.4, 4.4).display_range_array }.to raise_error(NotIntegerValueIsProvided)
      end
    end
  end
end

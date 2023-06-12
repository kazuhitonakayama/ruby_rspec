describe ClosedRange do
  describe '#display_range_array' do
    describe '整数の下端と上端（下端 < 上端）を引数に渡す' do
      example '下端として-1、上端として3を渡せば[-1, 3]を返す' do
        expect(ClosedRange.new(-1, 3).display_range_array).to eq [-1, 3]
      end
    end

    describe '上端よりも下端が大きい' do
      example '下端として3、上端として1を渡せばStandardErrorを返す' do
        expect(ClosedRange.new(3, 1).display_range_array).to eq StandardError
      end
    end

    describe '下端と上端が等しい' do
      example '下端として3、上端として3を渡せば[3]を返す' do
        expect(ClosedRange.new(3, 3).display_range_array).to eq [3]
      end
    end

    describe '整数ではない値を引数に渡す' do
      example '下端に"あ"、上端に"1"を渡せばNotIntegerValueIsProvided例外を返す' do
        expect(ClosedRange.new('あ', '1').display_range_array).to eq NotIntegerValueIsProvided
      end

      example '下端として3.4、上端として4.4を渡せばNotIntegerValueIsProvided例外を返す' do
        expect(ClosedRange.new(3.4, 4.4).display_range_array).to eq NotIntegerValueIsProvided
      end
    end
  end

  describe '#is_within_range' do
    before do
      closed_rang
    end

    describe '整数を引数に渡す' do
      example '区間内にある時'
      example '区間外にある時'
    end

    describe '整数ではない値を引数に渡す' do
      example '小数を渡すとNotIntegerValueIsProvided例外を返す'

      example '文字列を渡すとNotIntegerValueIsProvided例外を返す'
    end
  end
end

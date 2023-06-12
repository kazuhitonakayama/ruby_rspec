describe ClosedRange do
  let(:closed_range){ ClosedRange.new }

  describe '#display_range_array' do
    describe '整数の下端と上端（下端 < 上端）を引数に渡す' do
      example '下端として-1、上端として3を渡せば[-1, 3]を返す' do
        expect(closed_range.display_range_array(-1, 3)).to eq [-1, 3]
      end
    end

    describe '上端よりも下端が大きい' do
      example '下端として3、上端として1を渡せばStandardErrorを返す' do
        expect(closed_range.display_range_array(3, 1)).to eq StandardError
      end
    end

    describe '下端と上端が等しい' do
      example '下端として3、上端として3を渡せば[3]を返す' do
        expect(closed_range.display_range_array(3, 3)).to eq [3]
      end
    end

    describe '小数を引数に渡す' do
      example 'を渡せば' do
      end
    end

    describe '数字の文字列を引数に渡す' do
      example 'を渡せば' do
      end
    end

    describe '数字ではない文字列を引数に渡す' do
      example 'を渡せば' do
      end
    end
  end

  describe '#is_within_range' do
    describe '小数を引数に渡す' do
      example '' do
      end
    end

    describe '数字の文字列を引数に渡す' do
      example '' do
      end
    end

    describe '数字ではない文字列を引数に渡す' do
      example '' do
      end
    end

    describe '' do
      example '' do
      end
    end

    describe '' do
      example '' do
      end
    end
  end
end

# 配列Bには配列Aに指定する添え字が格納されている。
# 配列Bの指定する添え字に対応した配列Aから整数を取り出し、
# その整数の合計を返すspecify_sum関数を作成する。


array_A = [25, 48, 31, 82, 65]
array_B = [1, 4]

def specify_sum(a, b, a_len, b_len)
  sum = 0
  (b_len).times{ |i| sum = sum + a[b[i]] }
  return sum
end

p specify_sum(array_A, array_B, array_A.length, array_B.length)

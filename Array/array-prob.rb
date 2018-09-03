# 整数が格納された配列numとその長さlengthを引数として受け取り、結果を返す関数sum_num
#
# ①処理対象の先頭要素から順に、要素とその隣の要素の値を加算する処理を、最後まで繰り返す。
# ②処理対象の要素を一つ減らす
# ③処理対象の要素が一つになるまで繰り返し、加算した結果を返却する


num = [40, 30, 14, 94, 10]

def sum_num(num, ct_len)
  (ct_len - 1).downto(1) { |ct_len|
    ct_len.times{ |i| num[i] = num[i] + num[i + 1] }
    num.delete_at(ct_len)
  }
  return num[0]
end

p sum_num(num, num.length)

#整数型の１次元配列tに格納された要素を、更新対象となる要素の添字を格納した配列ｐと、
#更新後の値を格納した配列ｘを用いて更新した結果を、別の配列ｓに格納する関数update

arr_t = [57, 36, 29, 45, 18]
arr_p = [0, 2, arr_t.length]
arr_x = [21, 68]
arr_s = Array.new(arr_t.length)

def update(arr_t, arr_p, arr_x, arr_s)
  arr_s = arr_t
  (arr_p.length - 1).times{ |i| arr_s[arr_p[i]] = arr_x[i] }
  return arr_s
end

p update(arr_t, arr_p, arr_x, arr_s)

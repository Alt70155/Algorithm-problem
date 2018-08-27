#配列aの値を順に比較し、降順に順位付けする。
#その結果を配列bに格納し返却する関数ranking1
#値が同じ場合は添え字の小さいほうを小さい順位にする

arr_a = [65, 37, 48, 92, 37, 54, 20, 65, 37, 81]
arr_b = Array.new(arr_a.length, 1)

def ranking1(a, b, len)
  (len).times { |i| ((i.succ)...len).each { |j| a[i] < a[j] ? b[i] += 1 : b[j] += 1 } }
  arr_b
end

p ranking1(arr_a, arr_b, arr_a.length)

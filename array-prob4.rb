#配列aの値を順に比較し、降順に順位付けする。
#その結果を配列bに格納し返却する関数ranking1

arr_a = [65, 37, 48, 92, 37, 54, 20, 65, 37, 81]
arr_b = Array.new(arr_a.length, 1)

def ranking1(arr_a, arr_b, len)
  for i in 0...len
    for j in (i + 1)...len
      if arr_a[i] < arr_a[j]
        arr_b[i] += 1
      else
        arr_b[j] += 1
      end
    end
  end
  arr_b
end

p ranking1(arr_a, arr_b, arr_a.length)

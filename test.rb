a = {'yen' => 400}
a.each_with_index { |(key, num), i|
  p key, num, i + 1
}

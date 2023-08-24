require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
  puts"拡張子を除いたファイル名を入力してください。"
  file_name = gets.chomp

  puts"メモの内容を記入して下さい。"
  puts"Ctrl+Dで保存します。"
  input = STDIN.read
  memo = input.chomp
  CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{memo}"]
  end

  else memo_type == 2
  puts"メモの編集をします。"
  puts "ファイル名を入力してください。"
  file_names = gets.chomp
  CSV.open("#{file_names}.csv" , "a") do |csv|

  puts"編集する内容を記入してください。"
  puts"Ctrl+Dで保存します。"
  input = STDIN.read
  memo = input.chomp
  csv.puts ["#{memo}"]
  end
end

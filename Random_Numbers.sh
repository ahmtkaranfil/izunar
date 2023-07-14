#!/bin/bash

# Çıktı dosyası
output_file="Random_Numbers.txt"

# Kodu her tekrar çalıştırdığımızda dosyanın içindeki sayıların yeniden oluşturulması
> "$output_file"

for ((i=1; i<=10000; i++)); 
do
  random_float=$(echo "scale=2; ($RANDOM / 32767) * 4 + 1" | bc)
  echo $random_float >> "$output_file"
done

echo "Sayılar $output_file dosyasına yazıldı."

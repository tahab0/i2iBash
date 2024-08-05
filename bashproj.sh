#!/bin/bash

# Faktöriyel hesaplayan fonksiyon
factorial() {
  local num=$1
  local result=1
  for (( i=2; i<=num; i++ )); do
    result=$((result * i))
  done
  echo $result
}

# Menü
echo "Hesap Makinesi"
echo "1. Toplama"
echo "2. Çıkarma"
echo "3. Çarpma"
echo "4. Bölme"
echo "5. Mod"
echo "6. Faktöriyel"
echo "7. Çıkış"

read choice

# Seçime göre işlem
case $choice in
    1)
        read -p "İlk sayıyı girin: " num1
        read -p "İkinci sayıyı girin: " num2
        result=$(($num1 + $num2))
        ;;
    2)
        read -p "İlk sayıyı girin: " num1
        read -p "İkinci sayıyı girin: " num2
        result=$(($num1 - $num2))
        ;;
    3)
        read -p "İlk sayıyı girin: " num1
        read -p "İkinci sayıyı girin: " num2
        result=$(($num1 * $num2))
        ;;
    4)
        read -p "İlk sayıyı girin: " num1
        read -p "İkinci sayıyı girin: " num2
        if [ $num2 -eq 0 ]; then
            echo "Bir sayıyı sıfıra bölemezsiniz."
        else
            result=$(($num1 / $num2))
        fi
        ;;
    5)
        read -p "İlk sayıyı girin: " num1
        read -p "İkinci sayıyı girin: " num2
        result=$(($num1 % $num2))
        ;;
    6)
        read -p "Faktöriyeli alınacak sayıyı girin: " num
        result=$(factorial $num)
        ;;
    7)
        exit 0
        ;;
    *)
        echo "Geçersiz seçim."
        ;;
esac

echo "Sonuç: $result"

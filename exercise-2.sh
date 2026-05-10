#!/bin/bash
echo "لطفاً ۲۰ عدد را وارد کنید:"
nums=()
for i in {1..20}; do
    read -p "عدد $i: " val
    nums+=($val)
done

# مرتب‌سازی آرایه و پیدا کردن کوچکترین و بزرگترین
sorted_nums=($(printf "%s\n" "${nums[@]}" | sort -n))

echo "کوچکترین عدد: ${sorted_nums[0]}"
echo "بزرگترین عدد: ${sorted_nums[19]}"

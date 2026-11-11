# Script: tong_hop.sh
# Tac gia: NGUYEN_CONG_VINH
# Ngay tao: 11-11-2026
echo "Dang tao bao cao..."
echo "=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
cat logs/order.log | grep "status=404" >> logs/tong_hop.txt
cat logs/order.log | grep "status=500" | wc -l >> logs/tong_hop.txt
echo "Hoan thanh!"

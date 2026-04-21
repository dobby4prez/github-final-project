cat > simple-interest.sh << 'EOF'
#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "================================"
echo "   Simple Interest Calculator   "
echo "================================"
echo ""

read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest (% per year): " rate
read -p "Enter Time period (in years): " time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo ""
echo "================================"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"
echo "================================"
EOF

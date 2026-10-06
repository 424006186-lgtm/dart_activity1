
void main() {
  String customerName = 'Catherine Inocencio';
  int itemCount = 7;
  double pricePerItem = 24.50;
  bool isVIPMember = true;

  double rawTotal = itemCount * pricePerItem; 
  double discount = rawTotal * 0.10;
  double finalTotal = rawTotal - discount;

  int fullBoxesNeeded = itemCount ~/ 3; 
  int remainingItems = itemCount % 3; 

  bool qualifiesForFreeShipping = finalTotal >= 150.0; // Comparison (>=)
  bool hasLeftovers = remainingItems != 0; 

  print('=== GROCERY RECEIPT SUMMARY ===');
  print('Customer: $customerName');
  print('Items Purchased: $itemCount');
  print('Price per Item: \$${pricePerItem.toStringAsFixed(2)}');
  print('VIP Member: $isVIPMember');
  print('-----------------------------------');
  print('Subtotal: \$${rawTotal.toStringAsFixed(2)}');
  print('Discount Applied: -\$${discount.toStringAsFixed(2)}');
  print('Final Amount Due: \$${finalTotal.toStringAsFixed(2)}');
  print('-----------------------------------');
  print('Packaging: $fullBoxesNeeded box(es) of 3 items, $remainingItems item(s) left over.');
  print('Has leftover unpacked items? $hasLeftovers');
  print('Qualifies for Free Express Shipping? $qualifiesForFreeShipping');
}
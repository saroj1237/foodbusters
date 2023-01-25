double calculatePercentage(double total, double discountedPrice) {
  var percetage = ((total - discountedPrice) / total) * 100;
  return percetage;
}

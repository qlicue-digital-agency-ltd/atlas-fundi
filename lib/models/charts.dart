class LinearSales {
  final String month;
  final int sales;

  LinearSales(this.month, this.sales);
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

final salesData = [
  new OrdinalSales('Mon', 15),
  new OrdinalSales('Tue', 25),
  new OrdinalSales('Wed', 50),
  new OrdinalSales('Thurs', 75),
  new OrdinalSales('Fri', 45),
  new OrdinalSales('Sat', 100),
  new OrdinalSales('Sun', 65),
];

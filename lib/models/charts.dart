
class LinearSales {
  final String month;
  final int sales;

  LinearSales(this.month, this.sales);
}

 final linearSalesData = [
      new LinearSales("July", 56),
      new LinearSales("August", 75),
      new LinearSales("September", 25),
      new LinearSales("October", 5),
    ];





/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}


 final salesData = [
      new OrdinalSales('JAN', 5),
      new OrdinalSales('FEB', 25),
      new OrdinalSales('MARCH', 100),
      new OrdinalSales('APRIL', 75),
    ];

    final receivedData = [
      new OrdinalSales('JAN', 25),
      new OrdinalSales('FEB', 50),
      new OrdinalSales('MARCH', 10),
      new OrdinalSales('APRIL', 20),
    ];

    final profitData = [
      new OrdinalSales('JAN', 10),
      new OrdinalSales('FEB', 50),
      new OrdinalSales('MARCH', 50),
      new OrdinalSales('APRIL', 45),
    ];


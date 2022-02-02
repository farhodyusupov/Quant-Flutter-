class Karta {
  String cardType;
  int summa;
  int cardNumber;
  String date;

  Karta({required this.summa,
    required this.cardNumber,
    required this.date,
    required this.cardType});
}

List<Karta> karta = [
  Karta(
      summa: 1500000,
      cardNumber: 8960001412107889,
      date: "09/25",
      cardType: "xumo"),
  Karta(
      summa: 15000000,
      cardNumber: 8960045610014121,
      date: "09/25",
      cardType: 'uzcard'),
  Karta(
      summa: 1500000,
      cardNumber: 89600014145621210,
      date: "09/25",
      cardType: 'xumo'),
  Karta(
      summa: 1500000,
      cardNumber: 0896000141456221,
      date: "09/25",
      cardType: 'uzcard')
];


class ChartReport {
  final String transactionDate;
  final double summaAmount;

  ChartReport({required this.summaAmount, required this.transactionDate});
}

List<ChartReport> chartReportList = [
  ChartReport(summaAmount: 23416, transactionDate: "Jan. 1"),
  ChartReport(summaAmount: 456466, transactionDate: "Jan. 2"),
  ChartReport(summaAmount: 123132, transactionDate: "Jan. 3"),
  ChartReport(summaAmount: 31231, transactionDate: "Jan. 4"),
  ChartReport(summaAmount: 3132123, transactionDate: "Jan. 6"),
  ChartReport(summaAmount: 231231, transactionDate: "Jan. 7"),
  ChartReport(summaAmount: 321321, transactionDate: "Jan. 8"),
  ChartReport(summaAmount: 654654, transactionDate: "Jan. 9"),
  ChartReport(summaAmount: 21322, transactionDate: "Jan. 10"),
  ChartReport(summaAmount: 123321, transactionDate: "Jan. 11"),
  ChartReport(summaAmount: 313213, transactionDate: "Jan. 12"),
  ChartReport(summaAmount: 2131312, transactionDate: "Jan. 13"),
  ChartReport(summaAmount: 2313131, transactionDate: "Jan. 14"),
  ChartReport(summaAmount: 3216845, transactionDate: "Jan. 15"),
  ChartReport(summaAmount: 2313131, transactionDate: "Jan. 16"),
  ChartReport(summaAmount: 23131635, transactionDate: "Jan. 17"),
  ChartReport(summaAmount: 21123121, transactionDate: "Jan. 18"),
  ChartReport(summaAmount: 2156464, transactionDate: "Jan. 19"),
  ChartReport(summaAmount: 2313313, transactionDate: "Jan. 20"),
  ChartReport(summaAmount: 64654312, transactionDate: "Jan. 21"),
  ChartReport(summaAmount: 465466, transactionDate: "Jan. 22"),
  ChartReport(summaAmount: 23113112, transactionDate: "Jan. 23"),
  ChartReport(summaAmount: 2313131, transactionDate: "Jan. 24"),
  ChartReport(summaAmount: 2313156, transactionDate: "Jan. 25"),
  ChartReport(summaAmount: 231321231, transactionDate: "Jan. 26"),
  ChartReport(summaAmount: 23163654, transactionDate: "Jan. 27"),
  ChartReport(summaAmount: 231312, transactionDate: "Jan. 28"),
  ChartReport(summaAmount: 23131231, transactionDate: "Jan. 29"),
  ChartReport(summaAmount: 455646466, transactionDate: "Jan. 30"),
];
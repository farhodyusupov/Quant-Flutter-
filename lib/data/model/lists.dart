class Karta {
  String cardType;
  int summa;
  int cardNumber;
  String date;

  Karta(
      {required this.summa,
      required this.cardNumber,
      required this.date,
      required this.cardType});
}

List<Karta> karta = [
  Karta(
      summa: 56461331,
      cardNumber: 8960001412107889,
      date: "09/25",
      cardType: "xumo"),

  Karta(
      summa: 1500000,
      cardNumber: 89600014145621210,
      date: "09/25",
      cardType: 'xumo'),
  Karta(
      summa: 53131231321,
      cardNumber: 8960001412107889,
      date: "09/25",
      cardType: "xumo"),

  Karta(
      summa: 16546313,
      cardNumber: 89600014145621210,
      date: "09/25",
      cardType: 'xumo'),
];

class ChartReport {
  final String transactionDate;
  final double summaAmount;

  ChartReport({required this.summaAmount, required this.transactionDate});
}

List<ChartReport> chartReportList = [
  ChartReport(summaAmount: 23416, transactionDate: "2"),
  ChartReport(summaAmount: 456466, transactionDate: "2"),
  ChartReport(summaAmount: 123132, transactionDate: "3"),
  ChartReport(summaAmount: 31231, transactionDate: "4"),
  ChartReport(summaAmount: 313212, transactionDate: "5"),
  ChartReport(summaAmount: 231231, transactionDate: "6"),
  ChartReport(summaAmount: 321321, transactionDate: "7"),
  ChartReport(summaAmount: 654654, transactionDate: "8"),
  ChartReport(summaAmount: 21322, transactionDate: "9"),
  ChartReport(summaAmount: 123321, transactionDate: "10"),
  ChartReport(summaAmount: 313213, transactionDate: "11"),
  ChartReport(summaAmount: 2131312, transactionDate: "12"),
  ChartReport(summaAmount: 2313131, transactionDate: "13"),
  ChartReport(summaAmount: 3216845, transactionDate: "14"),
  ChartReport(summaAmount: 2313131, transactionDate: "15"),
];

class Transaction {
  final String image;
  final String number;
  final String paymentTo;
  final int summ;

  Transaction(this.image, this.number, this.paymentTo, this.summ);
}

List<Transaction> transactions = [
  Transaction("assets/icons/beeline.png", "+998 90 438 22 08", "Beeline", 15000),
  Transaction("assets/icons/uzmobile.png", "+998 99 438 22 08", "Uzmobile", 10000),
  Transaction("assets/icons/mobiuz.png", "+998 88 438 22 08", "Mobiuz", 20000),
  Transaction("assets/icons/qqb.png", "8600 3122 4567 7000", "Sadiqov Sarvarbek", 100000 ),
  Transaction("assets/icons/qqb.png", "8600 3122 4567 7000", "Sadiqov Sarvarbek", 100000),
  Transaction("assets/icons/mobiuz.png", "+998 88 438 22 08", "Mobiuz", 20000),

];

class Izbrannoy {
  final String image;
  final String poluchatel;
  final String poluchatelInfo;

  Izbrannoy({required this.image,required this.poluchatel, required this.poluchatelInfo});
}

List<Izbrannoy> izbrannoyList = [
  Izbrannoy(image: "assets/icons/beeline.png", poluchatel: "Beeline", poluchatelInfo: "+998 90 515 57 53"),
  Izbrannoy(image: "assets/icons/beeline.png", poluchatel: "Beeline", poluchatelInfo: "+998 90 515 57 53"),
  Izbrannoy(image: "assets/icons/beeline.png", poluchatel: "Beeline", poluchatelInfo: "+998 90 515 57 53")
];

class Uslugi{
  final String img;
  final String text;
  const Uslugi({required this.text, required this.img});
}

List<Uslugi> uslugiList=[
  Uslugi(text: "Онлайн конверсия", img: "konversiya.png"),
  Uslugi(text: "Кредиты", img: "kredit.png"),
  Uslugi(text: "Вклады", img: "vklad.png"),
  Uslugi(text: "Управление картами", img: "upravleniya.png"),
  Uslugi(text: "Кошелёк", img: "koshelok.png"),
  Uslugi(text: "Счета", img: "schotg.png"),
  Uslugi(text: "Мониторинг", img: "monitoring.png"),
  Uslugi(text: "Перевод на счет", img: "perevod.png"),
  Uslugi(text: "Humapay", img: "humopay.png"),
  Uslugi(text: "Заказать карту", img: "zakasat_kartu.png"),
  Uslugi(text: "Курсы валют", img: "valyuta.png"),
  Uslugi(text: "Выдача наличными", img: "atm.png"),
];

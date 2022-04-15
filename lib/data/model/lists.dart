import 'package:quant_flutter_new/data/model/transaction.dart';

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
  ChartReport(summaAmount: 834160, transactionDate: "2"),
  ChartReport(summaAmount: 656466, transactionDate: "2"),
  ChartReport(summaAmount: 420313, transactionDate: "3"),
  ChartReport(summaAmount: 631231, transactionDate: "4"),
  ChartReport(summaAmount: 83212, transactionDate: "5"),
  ChartReport(summaAmount: 1231231, transactionDate: "6"),
  ChartReport(summaAmount: 721321, transactionDate: "7"),
  ChartReport(summaAmount: 554654, transactionDate: "8"),
  ChartReport(summaAmount: 213228, transactionDate: "9"),
  ChartReport(summaAmount: 93321, transactionDate: "10"),
  ChartReport(summaAmount: 1113213, transactionDate: "11"),
  ChartReport(summaAmount: 713131, transactionDate: "12"),
  ChartReport(summaAmount: 431313, transactionDate: "13"),
  ChartReport(summaAmount: 621684, transactionDate: "14"),
  ChartReport(summaAmount: 1031313, transactionDate: "15"),
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
  Izbrannoy(image: "assets/icons/beeline.png", poluchatel: "Beeline", poluchatelInfo: "+998 90 515 57 53"),
  Izbrannoy(image: "assets/icons/beeline.png", poluchatel: "Beeline", poluchatelInfo: "+998 90 515 57 53"),
  Izbrannoy(image: "assets/icons/beeline.png", poluchatel: "Beeline", poluchatelInfo: "+998 90 515 57 53"),
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



class HomeServices {
  final String image;
  final String service;
  final String description;


  HomeServices({required this.image, required this.description, required this.service});
}

List<HomeServices> homeServices = [
  HomeServices(image: "assets/icons/my_home/beeline.png", description: "+998 90 438 22 08", service: "Номер телефона"),
  HomeServices(image: "assets/icons/my_home/beeline.png", description: "8600 31** **** 7000", service: "Перевод на счет")
];



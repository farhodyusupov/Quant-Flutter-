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

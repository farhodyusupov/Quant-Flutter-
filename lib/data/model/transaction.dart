class   Transaction {
  final String image;
  final String number;
  final String paymentTo;
  final int summ;

  Transaction({required this.image,required  this.number,required  this.paymentTo, required this.summ});

  static Transaction fromJson(Map<String, dynamic> json){
    return Transaction(
      image: json[''],
      number:  json[''],
      paymentTo: json[''],
      summ: json['']
    );
  }

}
class Currencies {
  int? USD;
  double? INR;
  double? AFN;
  double? EUR;
  double? PKR;

  Currencies(
      {required this.AFN,
        required this.EUR,
        required this.INR,
        required this.PKR,
        required this.USD});

  factory Currencies.fromMap({required Map<String, dynamic> data}) {
    return Currencies(
      AFN: data['results']['AFN'],
      EUR: data['results']['EUR'],
      INR: data['results']['INR'],
      PKR: data['results']['PKR'],
      USD: data['results']['USD'],
    );
  }
}
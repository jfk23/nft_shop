class Bidder {
  String? name;
  DateTime? date;
  num? price;

  Bidder(
    this.name,
    this.date,
    this.price,
  );

  static List<Bidder> generateBidder() {
    return [
      Bidder('Jenny', DateTime.now(), 1.53),
      Bidder('Lucy', DateTime.now(), 1.52),
      Bidder('Cale', DateTime.now(), 1.11),
      Bidder('John', DateTime.now(), 1.49),
      Bidder('Greg', DateTime.now(), 1.20),
      Bidder('Lion', DateTime.now(), 2.53),
      Bidder('Stafford', DateTime.now(), 4.53),
      Bidder('Rou', DateTime.now(), 0.53),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder('Will', DateTime.now(), 1.53),
      Bidder('Cole', DateTime.now(), 1.52),
      Bidder('Cale', DateTime.now(), 1.11),
      Bidder('John', DateTime.now(), 1.49),
      Bidder('Greg', DateTime.now(), 1.20),
      Bidder('Lion', DateTime.now(), 2.53),
      Bidder('Stafford', DateTime.now(), 4.53),
      Bidder('Rou', DateTime.now(), 0.53),
    ];
  }
}

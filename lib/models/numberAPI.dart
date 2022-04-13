class NumberAPI {
  /* final */ String text;
  /* final */ int number;
  /* final */ bool found;
  /* final */ String type;

   NumberAPI(
      {required this.text,
      required this.number,
      required this.found,
      required this.type});

  factory NumberAPI.fromMap(Map<String, dynamic> map) {
    return NumberAPI(
        text: map['text'],
        number: map['number'],
        found: map['found'],
        type: map['type']);
  }
}

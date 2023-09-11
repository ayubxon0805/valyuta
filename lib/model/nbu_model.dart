class NbuModel {
  String title;
  String code;
  String cb_price;
  String date;

  NbuModel({
    required this.title,
    required this.cb_price,
    required this.code,
    required this.date,
  });

  factory NbuModel.fromJson(Map<String, dynamic> json) {
    return NbuModel(
        title: json['title'] ?? "",
        cb_price: json['cb_price'] ?? "",
        code: json['code'] ?? "",
        date: json['date'] ?? "");
  }
}

class Failures {
  int? time;
  String? reason;

  Failures({this.time, this.reason});

  Failures.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    reason = json['reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['reason'] = this.reason;
    return data;
  }
}

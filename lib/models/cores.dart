class Cores {
  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;

  Cores({
    this.core,
    this.flight,
    this.gridfins,
    this.legs,
    this.reused,
    this.landingAttempt,
  });

  Cores.fromJson(Map<String, dynamic> json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    legs = json['legs'];
    reused = json['reused'];
    landingAttempt = json['landing_attempt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['core'] = this.core;
    data['flight'] = this.flight;
    data['gridfins'] = this.gridfins;
    data['legs'] = this.legs;
    data['reused'] = this.reused;
    data['landing_attempt'] = this.landingAttempt;
    return data;
  }
}

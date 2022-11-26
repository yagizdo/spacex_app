import 'cores.dart';
import 'failures.dart';
import 'fairings.dart';
import 'links.dart';

class LaunchesModel {
  Fairings? fairings;
  Links? links;
  String? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  List<Failures>? failures;
  String? details;
  List<String>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? id;

  LaunchesModel(
      {this.fairings,
      this.links,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.net,
      this.window,
      this.rocket,
      this.success,
      this.failures,
      this.details,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.autoUpdate,
      this.tbd,
      this.id});

  LaunchesModel.fromJson(Map<String, dynamic> json) {
    fairings = json['fairings'] != null
        ? new Fairings.fromJson(json['fairings'])
        : null;
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    if (json['failures'] != null) {
      failures = <Failures>[];
      json['failures'].forEach((v) {
        failures!.add(new Failures.fromJson(v));
      });
    }
    details = json['details'];
    payloads = json['payloads'].cast<String>();
    launchpad = json['launchpad'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];
    if (json['cores'] != null) {
      cores = <Cores>[];
      json['cores'].forEach((v) {
        cores!.add(new Cores.fromJson(v));
      });
    }
    autoUpdate = json['auto_update'];
    tbd = json['tbd'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fairings != null) {
      data['fairings'] = this.fairings!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    data['static_fire_date_utc'] = this.staticFireDateUtc;
    data['static_fire_date_unix'] = this.staticFireDateUnix;
    data['net'] = this.net;
    data['window'] = this.window;
    data['rocket'] = this.rocket;
    data['success'] = this.success;
    if (this.failures != null) {
      data['failures'] = this.failures!.map((v) => v.toJson()).toList();
    }
    data['details'] = this.details;
    data['payloads'] = this.payloads;
    data['launchpad'] = this.launchpad;
    data['flight_number'] = this.flightNumber;
    data['name'] = this.name;
    data['date_utc'] = this.dateUtc;
    data['date_unix'] = this.dateUnix;
    data['date_local'] = this.dateLocal;
    data['date_precision'] = this.datePrecision;
    data['upcoming'] = this.upcoming;
    if (this.cores != null) {
      data['cores'] = this.cores!.map((v) => v.toJson()).toList();
    }
    data['auto_update'] = this.autoUpdate;
    data['tbd'] = this.tbd;
    data['id'] = this.id;
    return data;
  }
}
